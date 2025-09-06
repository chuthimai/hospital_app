import '../entities/service.dart';

abstract class ServiceRepository {
  Future<List<Service>> getAllIncompleteServices();  // api
  Future<void> saveService(Service service);  // local
  Future<void> saveServices(List<Service> services);  // local
  Future<void> deleteAllIncompleteServices();  // local
  Future<void> deleteAllServices();  // local
}