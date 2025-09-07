
import 'package:hospital_app/share/db/isar_service.dart';
import 'package:isar/isar.dart';

import '../models/service_db_model.dart';

abstract class ServiceLocalDataSource {
  Future<void> saveService(ServiceDbModel service);
  Future<void> saveServices(List<ServiceDbModel> services);
  Future<List<ServiceDbModel>> getAllIncompleteServices();

  /// xử lý merge: thêm mới, giữ nguyên, đánh dấu hoàn thành
  Future<void> updateIncompleteServices(List<ServiceDbModel> incompleteServices);
  Future<void> deleteAllServices();
}

class ServiceLocalDataSourceImpl implements ServiceLocalDataSource {
  Future<Isar> get _isar async => await IsarService.instance;

  @override
  Future<void> deleteAllServices() async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.serviceDbModels.clear();
    });
  }

  @override
  Future<void> saveService(ServiceDbModel service) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.serviceDbModels.put(service);
    });
  }

  @override
  Future<void> saveServices(List<ServiceDbModel> services) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.serviceDbModels.putAll(services);
    });
  }

  @override
  Future<List<ServiceDbModel>> getAllIncompleteServices() async {
    final isar = await _isar;
    return await isar.serviceDbModels
        .filter()
        .isCompletedEqualTo(false)
        .findAll();
  }

  @override
  Future<void> updateIncompleteServices(List<ServiceDbModel> incompleteServices) async {
    final isar = await _isar;

    await isar.writeTxn(() async {
      final remoteIds = incompleteServices.map((e) => e.id).toSet();

      await _addIncompleteServices(isar, incompleteServices);
      await _markMissingAsCompleted(isar, remoteIds);
    });
  }

  Future<void> _addIncompleteServices(
      Isar isar,
      List<ServiceDbModel> incompleteServices,
      ) async {
    for (final service in incompleteServices) {
      service.isCompleted = false;
      await isar.serviceDbModels.put(service);
    }
  }

  Future<void> _markMissingAsCompleted(
      Isar isar,
      Set<int> remoteIds,
      ) async {
    final localIncomplete = await isar.serviceDbModels
        .filter()
        .isCompletedEqualTo(false)
        .findAll();

    for (final localService in localIncomplete) {
      if (!remoteIds.contains(localService.id)) {
        localService.isCompleted = true;
        await isar.serviceDbModels.put(localService);
      }
    }
  }
  
}