import 'package:hospital_app/features/view_doctor/data/datasource/specialty_local_data_source.dart';
import 'package:hospital_app/features/view_doctor/data/datasource/specialty_remote_data_source.dart';
import 'package:hospital_app/features/view_doctor/data/models/medical_specialty_db_model.dart';
import 'package:hospital_app/features/view_doctor/domain/entities/medical_specialty.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/repositories/specialty_repository.dart';

class SpecialtyRepositoryImpl implements SpecialtyRepository {
  final SpecialtyLocalDataSource _localDataSource;
  final SpecialtyRemoteDataSource _remoteDataSource;

  SpecialtyRepositoryImpl({
    required localDataSource,
    required remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<void> deleteAllSpecialties() async {
    try {
      await _localDataSource.deleteAllSpecialties();
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<List<MedicalSpecialty>> getAllNewSpecialties() async {
    try {
      final lastId = await getLastId();
      final specialtiesApi =
          await _remoteDataSource.getAllNewSpecialties(lastId);
      return specialtiesApi.map((e) => e.toEntity()).toList();
    } catch (e) {
      AppLogger().error("Remote error: $e");
    }
    return [];
  }

  @override
  Future<List<MedicalSpecialty>> getAllSpecialties() async {
    try {
      final specialtiesApi = await _remoteDataSource.getAllSpecialties();
      await saveSpecialties(specialtiesApi.map((e) => e.toEntity()).toList());
      final specialtiesDb = await _localDataSource.getAllSpecialties();
      return specialtiesDb.map((e) => e.toEntity()).toList();
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
    return [];
  }

  @override
  Future<int> getLastId() async {
    try {
      final lastId = await _localDataSource.getLastId();
      return lastId;
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
    return 0;
  }

  @override
  Future<void> saveSpecialties(List<MedicalSpecialty> specialties) async {
    try {
      await _localDataSource.saveSpecialties(specialties
          .map((e) => MedicalSpecialtyDbModel.fromEntity(e))
          .toList());
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<void> saveSpecialty(MedicalSpecialty specialty) async {
    try {
      await _localDataSource
          .saveSpecialty(MedicalSpecialtyDbModel.fromEntity(specialty));
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }
}
