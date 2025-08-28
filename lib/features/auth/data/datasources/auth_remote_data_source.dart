import 'package:hospital_app/fakedata/user.dart';
import 'package:hospital_app/features/auth/data/models/register_request.dart';
import 'package:hospital_app/share/db/secure_token_storage.dart';

import '../models/login_request.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(LoginRequest loginRequest);
  Future<void> register(RegisterRequest registerRequest);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<UserModel> login(LoginRequest loginRequest) async {
    await Future.delayed(const Duration(seconds: 1));

    if (loginRequest.id == 1 && loginRequest.password == "12345678") {
      final tokenStorage = SecureTokenStorage();
      await tokenStorage.writeAccessToken(userWithTokenDataFake["accessToken"]);
      await tokenStorage.writeRefreshToken(userWithTokenDataFake["refreshToken"]);
      return UserModel.fromJson(userWithTokenDataFake['user']);
    }
    throw Exception("Sai số CCCD hoặc mật khẩu");
  }

  @override
  Future<void> register(RegisterRequest registerRequest) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
