import 'package:hospital_app/features/appointment/data/models/appointment_api_model.dart';
import 'package:hospital_app/share/constants/path_api.dart';
import 'package:hospital_app/share/dio/remote_service.dart';
import 'package:hospital_app/share/utils/app_exception/api_error_handler.dart';

import '../models/create_appointment_params_request.dart';

abstract class AppointmentRemoteDataSource {
  Future<AppointmentApiModel> createAppointment(
      CreateAppointmentParamsRequest params);

  Future<void> cancelAppointment(AppointmentApiModel appointment);

  Future<List<AppointmentApiModel>> getAppointments();
}

class AppointmentRemoteDataSourceImpl implements AppointmentRemoteDataSource {
  @override
  Future<void> cancelAppointment(AppointmentApiModel appointment) {
    // TODO: implement cancelAppointment
    throw UnimplementedError();
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
  Future<List<AppointmentApiModel>> getAppointments() {
    // TODO: implement getAppointments
    throw UnimplementedError();
  }
}
