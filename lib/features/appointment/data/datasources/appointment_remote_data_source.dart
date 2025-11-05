import 'package:hospital_app/features/appointment/data/models/appointment_api_model.dart';
import 'package:hospital_app/features/auth/domain/entities/user.dart';
import 'package:hospital_app/share/constants/path_api.dart';
import 'package:hospital_app/share/dio/remote_service.dart';
import 'package:hospital_app/share/utils/app_exception/api_error_handler.dart';

import '../../domain/entities/appointment.dart';
import '../models/create_appointment_params_request.dart';

abstract class AppointmentRemoteDataSource {
  Future<AppointmentApiModel> createAppointment(
      CreateAppointmentParamsRequest params);

  Future<void> cancelAppointment(Appointment appointment);

  Future<List<AppointmentApiModel>> getAppointments(User user);
}

class AppointmentRemoteDataSourceImpl implements AppointmentRemoteDataSource {
  @override
  Future<void> cancelAppointment(Appointment appointment) async {
    try {
      final remote = RemoteService();
      await remote.delete(
        PathApi.cancelAppointment + appointment.id.toString(),
        data: {
          "reason": "Bệnh nhân huỷ lịch",
        },
      );

    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      throw error;
    }
  }

  @override
  Future<AppointmentApiModel> createAppointment(
      CreateAppointmentParamsRequest params) async {
    try {
      final remote = RemoteService();
      final response = await remote.post(
        PathApi.createAppointment,
        data: params.toJson(),
      );
      return AppointmentApiModel.fromJson(response.data);
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      throw error;
    }
  }

  @override
  Future<List<AppointmentApiModel>> getAppointments(User user) async {
    try {
      final remote = RemoteService();
      final response = await remote.get(
        "${PathApi.getAllAppointments}?user-identifier=${user.id}",
      );

      final data = response.data as List<dynamic>;
      final appointments = data
          .map((json) => AppointmentApiModel.fromJson(json as Map<String, dynamic>))
          .toList();

      return appointments;

    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      throw error;
    }
  }
}
