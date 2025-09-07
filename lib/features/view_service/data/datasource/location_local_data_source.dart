
import 'package:hospital_app/share/db/isar_service.dart';
import 'package:isar/isar.dart';

import '../models/location_db_model.dart';

abstract class LocationLocalDataSource {
  Future<void> saveLocation(LocationDbModel location);
  Future<void> deleteAllLocations();
  Future<void> deleteLocation(LocationDbModel location);
}

class LocationLocalDataSourceImpl implements LocationLocalDataSource {
  Future<Isar> get _isar async => await IsarService.instance;

  @override
  Future<void> deleteAllLocations() async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.locationDbModels.clear();
    });
  }

  @override
  Future<void> deleteLocation(LocationDbModel location) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.locationDbModels.delete(location.id);
    });
  }

  @override
  Future<void> saveLocation(LocationDbModel location) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.locationDbModels.put(location);
    });
  }
}
