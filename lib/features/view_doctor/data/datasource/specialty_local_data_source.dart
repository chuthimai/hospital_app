import 'package:hospital_app/features/view_doctor/data/models/medical_specialty_db_model.dart';
import 'package:hospital_app/share/db/isar_service.dart';
import 'package:isar/isar.dart';

abstract class SpecialtyLocalDataSource {
  Future<List<MedicalSpecialtyDbModel>> getAllSpecialties();
  Future<int> getLastId();
  Future<void> saveSpecialty(MedicalSpecialtyDbModel specialty);
  Future<void> saveSpecialties(List<MedicalSpecialtyDbModel> specialties);
  Future<void> deleteAllSpecialties();
}

class SpecialtyLocalDataSourceImpl implements SpecialtyLocalDataSource {
  Future<Isar> get _isar async => await IsarService.instance;

  @override
  Future<void> deleteAllSpecialties() async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.medicalSpecialtyDbModels.clear();
    });
  }

  @override
  Future<List<MedicalSpecialtyDbModel>> getAllSpecialties() async {
    final isar = await _isar;
    return await isar.medicalSpecialtyDbModels.where().findAll();
  }

  @override
  Future<void> saveSpecialty(MedicalSpecialtyDbModel specialty) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.medicalSpecialtyDbModels.put(specialty);
    });
  }

  @override
  Future<void> saveSpecialties(List<MedicalSpecialtyDbModel> specialties) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.medicalSpecialtyDbModels.putAll(specialties);
    });
  }

  @override
  Future<int> getLastId() async {
    final isar = await _isar;
    final last = await isar.medicalSpecialtyDbModels.where(sort: Sort.desc).findFirst();
    return last?.id ?? 0;
  }
}