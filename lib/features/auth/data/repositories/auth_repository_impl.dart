import 'package:hospital_app/features/appointment/data/datasources/appointment_local_data_source.dart';
import 'package:hospital_app/features/auth/data/models/register_request.dart';
import 'package:hospital_app/features/auth/domain/entities/register_params.dart';
import 'package:hospital_app/features/notification/data/datasource/notification_local_data_source.dart';
import 'package:hospital_app/features/view_invoice/data/datasource/invoice_local_data_source.dart';
import 'package:hospital_app/features/view_prescription/data/datasources/prescription_local_data_source.dart';
import 'package:hospital_app/features/view_service/data/datasource/service_local_data_source.dart';
import 'package:hospital_app/share/db/secure_token_storage.dart';
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
  final NotificationLocalDataSource _notificationLocalDataSource;
  final PrescriptionLocalDataSource _prescriptionLocalDataSource;
  final ServiceLocalDataSource _serviceLocalDataSource;
  final AppointmentLocalDataSource _appointmentLocalDataSource;
  final InvoiceLocalDataSource _invoiceLocalDataSource;

  AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
    required AuthLocalDataSource localDataSource,
    required NotificationLocalDataSource notificationLocalDataSource,
    required PrescriptionLocalDataSource prescriptionLocalDataSource,
    required ServiceLocalDataSource serviceLocalDataSource,
    required AppointmentLocalDataSource appointmentLocalDataSource,
    required InvoiceLocalDataSource invoiceLocalDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _notificationLocalDataSource = notificationLocalDataSource,
        _prescriptionLocalDataSource = prescriptionLocalDataSource,
        _serviceLocalDataSource = serviceLocalDataSource,
        _appointmentLocalDataSource = appointmentLocalDataSource,
        _invoiceLocalDataSource = invoiceLocalDataSource;

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
    await _notificationLocalDataSource.deleteAllNotifications();
    await _prescriptionLocalDataSource.deleteAllPrescriptions();
    await _serviceLocalDataSource.deleteAllServices();
    await _appointmentLocalDataSource.deleteAllAppointments();
    await _invoiceLocalDataSource.deleteAllInvoices();
    await SecureTokenStorage().deleteTokens();
  }

  @override
  Future<User?> getCurrentUser() async {
    final userModel = await _localDataSource.getUser();
    return userModel?.toEntity();
  }

  @override
  Future<void> register(RegisterParams registerParams) async {
    await _remoteDataSource
        .register(RegisterRequest.fromParams(registerParams));
  }
}
