import '../entities/service.dart';

abstract class ServiceRepository {
  Future<List<Service>> getAllIncompleteServices();
  Future<void> deleteAllServices();
}