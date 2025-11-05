import 'package:hospital_app/features/appointment/data/datasources/appointment_local_data_source.dart';
import 'package:hospital_app/features/appointment/data/datasources/appointment_remote_data_source.dart';
import 'package:hospital_app/features/appointment/data/models/appointment_api_model.dart';
import 'package:hospital_app/features/appointment/data/models/appointment_db_model.dart';
import 'package:hospital_app/features/appointment/data/models/create_appointment_params_request.dart';
import 'package:hospital_app/features/appointment/domain/entities/appointment.dart';
import 'package:hospital_app/features/appointment/domain/entities/create_appointment_prams.dart';
import 'package:hospital_app/features/auth/domain/entities/user.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/repositories/appointment_repository.dart';

class AppointmentRepositoryImpl implements AppointmentRepository {
  final AppointmentLocalDataSource _localDataSource;
  final AppointmentRemoteDataSource _remoteDataSource;

  AppointmentRepositoryImpl({
    required localDataSource,
    required remoteDataSource,
  })
      : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<void> cancelAppointment(Appointment appointment) async {
    try {
      await _remoteDataSource.cancelAppointment(appointment);
    } catch (e) {
      AppLogger().error("Remote error: $e");
      throw Exception("Huỷ lịch hẹn thất bại");
    }
  }

  @override
  Future<Appointment> createAppointment(CreateAppointmentParams params) async {
    try {
      final appointmentApi = await _remoteDataSource
          .createAppointment(CreateAppointmentParamsRequest.fromParams(params));

      final appointment = appointmentApi.toEntity();
      await saveAppointment(appointment);
      return appointment;
    } catch (e) {
      AppLogger().error("Remote error: $e");
      throw Exception("Tạo cuộc hẹn thất bại");
    }
  }

  @override
  Future<void> deleteAllAppointments() async {
    try {
      await _localDataSource.deleteAllAppointments();
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<List<Appointment>> getAppointments(User user) async {
    try {
      final appointmentsRemote = await _remoteDataSource.getAppointments(user);
      final appointments = appointmentsRemote.map((e) => e.toEntity()).toList();
      await saveAppointments(appointments);
      return appointments;
    } catch (e) {
      AppLogger().error("Remote error: $e");
    }

    try {
      final appointmentsLocal = await _localDataSource.getAppointments();
      final appointments = appointmentsLocal.map((e) => e.toEntity()).toList();
      return await Future.wait(appointments);
    } catch (e) {
      AppLogger().error("Local error: $e");
    }

    return [];
  }

  @override
  Future<void> saveAppointment(Appointment appointment) async {
    try {
      await _localDataSource.saveAppointment(
          AppointmentDbModel.fromEntity(appointment));
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<void> saveAppointments(List<Appointment> appointments) async {
    try {
      await _localDataSource.saveAppointments(
          appointments.map((e) => AppointmentDbModel.fromEntity(e)).toList());
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }
}
