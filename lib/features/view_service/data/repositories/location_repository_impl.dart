import 'package:hospital_app/features/view_service/data/datasource/location_local_data_source.dart';
import 'package:hospital_app/features/view_service/data/models/location_db_model.dart';
import 'package:hospital_app/features/view_service/domain/entities/location.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/repositories/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationLocalDataSource _localDataSource;

  LocationRepositoryImpl({
    required LocationLocalDataSource localDataSource,
  }) : _localDataSource = localDataSource;

  @override
  Future<void> deleteAllLocations() async {
    try {
      await _localDataSource.deleteAllLocations();
    } catch (e) {
      AppLogger().error("Local Data: $e");
    }
  }

  @override
  Future<void> deleteLocation(Location location) async {
    try {
      await _localDataSource
          .deleteLocation(LocationDbModel.fromEntity(location));
    } catch (e) {
      AppLogger().error("Local Data: $e");
    }
  }

  @override
  Future<void> saveLocation(Location location) async {
    try {
      await _localDataSource.saveLocation(LocationDbModel.fromEntity(location));
    } catch (e) {
      AppLogger().error("Local Data: $e");
    }
  }
}
