import 'dart:async';
import 'package:dio/dio.dart';

import 'token_manager.dart';

/// Interceptor xử lý attach token + refresh token
class AuthInterceptor extends Interceptor {
  final Dio _dio;
  final TokenManager _tokenManager;

  bool _isRefreshing = false;
  // Queue để đặt các request khi đang refresh token
  final List<Function(String)> _waitQueue = [];

  AuthInterceptor(this._dio, this._tokenManager);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _tokenManager.getAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final requestOptions = err.requestOptions;

      // Nếu đang refresh → đưa request vào hàng chờ
      if (_isRefreshing) {
        final completer = Completer<Response>();
        _waitQueue.add((String newToken) async {
          requestOptions.headers['Authorization'] = 'Bearer $newToken';
          completer.complete(await _retry(requestOptions));
        });
        return completer.future.then((res) => handler.resolve(res));
      }

      // Thực hiện refresh
      _isRefreshing = true;
      try {
        final newToken = await _tokenManager.refreshToken();
        if (newToken != null) {
          final response = await _retryWithNewToken(requestOptions, newToken);
          handler.resolve(response);
        } else {
          await _tokenManager.clearTokens();
          handler.next(err);
        }
      } finally {
        _isRefreshing = false;
      }
      return;
    }

    handler.next(err);
  }

  Future<Response> _retryWithNewToken(RequestOptions requestOptions, String token) async {
    requestOptions.headers['Authorization'] = 'Bearer $token';
    final response = await _retry(requestOptions);

    for (final callback in _waitQueue) {
      callback(token);
    }
    _waitQueue.clear();

    return response;
  }

  Future<Response> _retry(RequestOptions requestOptions) {
    return _dio.fetch(
      Options(method: requestOptions.method, headers: requestOptions.headers).compose(
        _dio.options,
        requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
      ),
    );
  }
}