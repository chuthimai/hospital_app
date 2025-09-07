import '../entities/service.dart';

abstract class ServiceRepository {
  Future<List<Service>> getAllIncompleteServices();  // api + local
  Future<void> saveService(Service service);  // local
  Future<void> saveServices(List<Service> services);  // local

  /// Dùng để update lại các service đã thực hiện
  Future<void> updateIncompleteServices(List<Service> incompleteServices);  // local
  Future<void> deleteAllServices();  // local
}