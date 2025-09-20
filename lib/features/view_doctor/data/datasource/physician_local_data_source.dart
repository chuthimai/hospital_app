import 'package:hospital_app/features/view_doctor/data/models/physician_db_model.dart';
import 'package:hospital_app/share/db/isar_service.dart';
import 'package:isar/isar.dart';

abstract class PhysicianLocalDataSource {
  Future<int> getLastId();
  Future<void> savePhysician(PhysicianDbModel physician);
  Future<void> savePhysicians(List<PhysicianDbModel> physicians);
  Future<void> deleteAllPhysician();
}

class PhysicianLocalDataSourceImpl implements PhysicianLocalDataSource {
  Future<Isar> get _isar async => await IsarService.instance;

  @override
  Future<void> deleteAllPhysician() async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.physicianDbModels.clear();
    });
  }

  @override
  Future<void> savePhysician(PhysicianDbModel physician) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.physicianDbModels.put(physician);
    });
  }

  @override
  Future<void> savePhysicians(List<PhysicianDbModel> physicians) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.physicianDbModels.putAll(physicians);
    });
  }

  @override
  Future<int> getLastId() async {
    final isar = await _isar;
    final last = await isar.physicianDbModels.where(sort: Sort.desc).findFirst();
    return last?.id ?? 0;
  }
}