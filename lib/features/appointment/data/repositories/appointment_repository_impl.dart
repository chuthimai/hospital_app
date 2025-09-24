import 'package:hospital_app/features/appointment/data/datasources/appointment_local_data_source.dart';
import 'package:hospital_app/features/appointment/data/datasources/appointment_remote_data_source.dart';
import 'package:hospital_app/features/appointment/data/models/appointment_db_model.dart';
import 'package:hospital_app/features/appointment/data/models/create_appointment_params_request.dart';
import 'package:hospital_app/features/appointment/domain/entities/appointment.dart';
import 'package:hospital_app/features/appointment/domain/entities/create_appointment_prams.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/repositories/appointment_repository.dart';

class AppointmentRepositoryImpl implements AppointmentRepository {
  final AppointmentLocalDataSource _localDataSource;
  final AppointmentRemoteDataSource _remoteDataSource;

  AppointmentRepositoryImpl({
    required localDataSource,
    required remoteDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<void> cancelAppointment(Appointment appointment) {
    // TODO: implement cancelAppointment
    throw UnimplementedError();
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
  Future<List<Appointment>> getAppointments() {
    // TODO: implement getAppointments
    throw UnimplementedError();
  }

  @override
  Future<void> saveAppointment(Appointment appointment) async {
    try {
      await _localDataSource.saveAppointment(
          AppointmentDbModel.fromEntity(appointment));
    } catch(e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<void> saveAppointments(List<Appointment> appointments) {
    // TODO: implement saveAppointments
    throw UnimplementedError();
  }
}
