import 'package:hospital_app/features/view_doctor/data/datasource/physician_local_data_source.dart';
import 'package:hospital_app/features/view_doctor/data/datasource/physician_remote_data_source.dart';
import 'package:hospital_app/features/view_doctor/data/models/physician_db_model.dart';
import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';
import 'package:hospital_app/share/utils/app_exception/api_error_handler.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/repositories/physician_repository.dart';

class PhysicianRepositoryImpl implements PhysicianRepository {
  final PhysicianLocalDataSource _localDataSource;
  final PhysicianRemoteDataSource _remoteDataSource;

  PhysicianRepositoryImpl({
    required localDataSource,
    required remoteDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<void> deleteAllPhysician() async {
    try {
      await _localDataSource.deleteAllPhysician();
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<List<Physician>> getAllNewPhysicians() async {
    try {
      final lastId = await getLastId();
      final physiciansApi = await _remoteDataSource.getAllNewPhysicians(lastId);
      return physiciansApi.map((e) => e.toEntity()).toList();
    } catch (e) {
      AppLogger().error("Remote error: $e");
    }
    return [];
  }

  @override
  Future<List<Physician>> getAllPhysicians() async {
    try {
      final physiciansApi = await _remoteDataSource.getAllPhysicians();
      return physiciansApi.map((e) => e.toEntity()).toList();
    } catch (e) {
      AppLogger().error("Remote error: $e");
    }
    return [];
  }

  @override
  Future<int> getLastId() async {
    try {
      final lastId = await _localDataSource.getLastId();
      return lastId;
    } catch (e) {
      AppLogger().error("Remote error: $e");
    }
    return 0;
  }

  @override
  Future<Physician> getPhysicianDetail(Physician doctor) async {
    try {
      final physicianApi =
          await _remoteDataSource.getPhysicianDetail(doctor.id);
      return physicianApi.toEntity();
    } catch (e) {
      AppLogger().error("Remote error: $e");
      final error = ApiErrorHandler.handle(e);
      throw error;
    }
  }

  @override
  Future<void> savePhysician(Physician doctor) async {
    try {
      await _localDataSource.savePhysician(PhysicianDbModel.fromEntity(doctor));
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<void> savePhysicians(List<Physician> doctors) async {
    try {
      await _localDataSource.savePhysicians(
          doctors.map((e) => PhysicianDbModel.fromEntity(e)).toList());
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<List<Physician>> getAllPhysiciansInSpecialty(
      int medicalSpecialtyId) async {
    try {
      final physiciansApi = await _remoteDataSource
          .getAllPhysiciansInSpecialty(medicalSpecialtyId);
      return physiciansApi.map((e) => e.toEntity()).toList();
    } catch (e) {
      AppLogger().error("Remote error: $e");
    }
    return [];
  }
}
