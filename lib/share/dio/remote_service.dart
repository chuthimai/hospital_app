import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hospital_app/share/constants/app_config.dart';
import 'package:hospital_app/share/db/secure_token_storage.dart';

import 'auth_interceptor.dart';
import 'token_manager.dart';

/***
 Cách dùng:
    final _remote = RemoteService();
    final response = await _remote.post("/users", data: data);
*////

class RemoteService {
  static final RemoteService _instance = RemoteService._internal();
  factory RemoteService() => _instance;

  late final Dio _dio;
  late final TokenManager _tokenManager;

  Dio get dio => _dio;

  RemoteService._internal() {
    _dio = Dio(BaseOptions(
      baseUrl: AppConfig.devBaseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 30),
      headers: {"Accept": "application/json"},
    ));

    // Dio riêng cho refresh token
    _tokenManager = TokenManager(SecureTokenStorage(),
        Dio(BaseOptions(baseUrl: AppConfig.devBaseUrl)));

    // Logging (chỉ khi debug)
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
      ));
    }

    // Thêm AuthInterceptor
    _dio.interceptors.add(AuthInterceptor(_dio, _tokenManager));
  }

  // ------------------ Wrapper GET/POST/PUT/DELETE ------------------
  Future<Response<T>> get<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
      }) =>
      _dio.get<T>(path,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken);

  Future<Response<T>> post<T>(
      String path, {
        dynamic data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
      }) =>
      _dio.post<T>(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken);

  Future<Response<T>> put<T>(
      String path, {
        dynamic data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
      }) =>
      _dio.put<T>(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken);

  Future<Response<T>> delete<T>(
      String path, {
        dynamic data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
      }) =>
      _dio.delete<T>(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken);
}