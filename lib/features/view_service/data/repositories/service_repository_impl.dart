import 'package:hospital_app/features/view_service/data/datasource/service_local_data_source.dart';
import 'package:hospital_app/features/view_service/data/datasource/service_remote_data_source.dart';
import 'package:hospital_app/features/view_service/data/models/service_db_model.dart';
import 'package:hospital_app/features/view_service/domain/entities/service.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/repositories/service_repository.dart';

class ServiceRepositoryImpl implements ServiceRepository {
  final ServiceLocalDataSource _localDataSource;
  final ServiceRemoteDataSource _remoteDataSource;

  ServiceRepositoryImpl({
    required ServiceLocalDataSource localDataSource,
    required ServiceRemoteDataSource remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<void> updateIncompleteServices(
      List<Service> incompleteServices) async {
    try {
      final incompleteServicesLocal =
          incompleteServices.map((e) => ServiceDbModel.fromEntity(e)).toList();
      await _localDataSource.updateIncompleteServices(incompleteServicesLocal);
    } catch (e) {
      AppLogger().error("Local data: $e");
    }
  }

  @override
  Future<void> deleteAllServices() async {
    try {
      await _localDataSource.deleteAllServices();
    } catch (e) {
      AppLogger().error("Local data: $e");
    }
  }

  @override
  Future<List<Service>> getAllIncompleteServices() async {
    try {
      final servicesRemote = await _remoteDataSource.getAllIncompleteServices();
      final servicesEntity = servicesRemote.map((e) => e.toEntity()).toList();
      await updateIncompleteServices(servicesEntity);
    } catch (e) {
      AppLogger().error("Local/Remote data: $e");
    }
    try {
      final incompleteServicesRemote =
          await _localDataSource.getAllIncompleteServices();

      return await Future.wait(incompleteServicesRemote.map((e) => e.toEntity()).toList());
    } catch (e) {
      AppLogger().error("Local data: $e");
    }
    return [];
  }

  @override
  Future<void> saveService(Service service) async {
    try {
      await _localDataSource.saveService(ServiceDbModel.fromEntity(service));
    } catch (e) {
      AppLogger().error("Local data: $e");
    }
  }

  @override
  Future<void> saveServices(List<Service> services) async {
    try {
      final servicesLocal =
          services.map((e) => ServiceDbModel.fromEntity(e)).toList();
      await _localDataSource.saveServices(servicesLocal);
    } catch (e) {
      AppLogger().error("Local data: $e");
    }
  }
}
