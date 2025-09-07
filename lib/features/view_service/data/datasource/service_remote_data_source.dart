
import '../models/service_api_model.dart';

abstract class ServiceRemoteDataSource {
  Future<List<ServiceApiModel>> getAllIncompleteServices();
}