
import 'package:hospital_app/share/constants/path_api.dart';
import 'package:hospital_app/share/dio/remote_service.dart';
import 'package:hospital_app/share/utils/app_exception/api_error_handler.dart';

import '../models/service_api_model.dart';

abstract class ServiceRemoteDataSource {
  Future<List<ServiceApiModel>> getAllIncompleteServices();
}

class ServiceRemoteDataSourceImpl implements ServiceRemoteDataSource {
  @override
  Future<List<ServiceApiModel>> getAllIncompleteServices() async {
    try {
      final remote = RemoteService();
      final response = await remote.get(
        PathApi.getAllIncompleteServices
      );

      final data = response.data as List<dynamic>;
      final services = data
          .map((json) => ServiceApiModel.fromJson(json as Map<String, dynamic>))
          .toList();
      return services;

    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      throw error;
    }
  }

}