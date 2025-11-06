import 'package:hospital_app/share/constants/path_api.dart';
import 'package:hospital_app/share/dio/remote_service.dart';
import 'package:hospital_app/share/utils/app_exception/api_error_handler.dart';

import '../models/prescription_api_model.dart';


abstract class PrescriptionRemoteDataSource {
  Future<List<PrescriptionApiModel>> getPrescriptions();
  Future<PrescriptionApiModel> getDetailPrescription(PrescriptionApiModel prescription);
}

class PrescriptionRemoteDataSourceImpl implements PrescriptionRemoteDataSource {
  @override
  Future<PrescriptionApiModel> getDetailPrescription(PrescriptionApiModel prescription) async {
    try {
      final remote = RemoteService();
      final response = await remote.get(
        PathApi.getDetailPrescription + prescription.identifier.toString(),
      );
      final data = response.data as Map<String, dynamic>;
      return PrescriptionApiModel.fromJson(data);

    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      throw error;
    }
  }

  @override
  Future<List<PrescriptionApiModel>> getPrescriptions() async {
    try {
      final remote = RemoteService();
      final response = await remote.get(
        PathApi.getAllPrescriptions,
      );

      final data = response.data as List<dynamic>;
      final prescriptions = data
          .map((json) => PrescriptionApiModel.fromJson(json as Map<String, dynamic>))
          .toList();
      return prescriptions;
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      throw error;
    }
  }

}