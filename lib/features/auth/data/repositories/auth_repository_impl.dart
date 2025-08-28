import 'package:hospital_app/features/auth/data/models/register_request.dart';
import 'package:hospital_app/features/auth/domain/entities/register_params.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/entities/login_params.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_data_source.dart';
import '../datasources/auth_remote_data_source.dart';
import '../models/login_request.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;

  AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
    required AuthLocalDataSource localDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<User> login(LoginParams loginParams) async {
    try {
      final userModel =
          await _remoteDataSource.login(LoginRequest.fromParams(loginParams));
      await _localDataSource.saveUser(userModel);
      return userModel.toEntity();
    } catch (e) {
      AppLogger().error("Remote error: $e");
      throw Exception(e);
    }
  }

  @override
  Future<void> logout() async {
    await _localDataSource.deleteUser();
  }

  @override
  Future<User?> getCurrentUser() async {
    final userModel = await _localDataSource.getUser();
    return userModel?.toEntity();
  }

  @override
  Future<void> register(RegisterParams registerParams) async {
    await _remoteDataSource.register(RegisterRequest.fromParams(registerParams));
  }
}
