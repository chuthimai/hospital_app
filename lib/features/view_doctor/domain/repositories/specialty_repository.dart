import '../entities/medical_specialty.dart';

abstract class SpecialtyRepository {
  Future<List<MedicalSpecialty>> getAllSpecialties();  // api + local
  Future<List<MedicalSpecialty>> getAllNewSpecialties();  // api
  Future<int> getLastId();  // local
  Future<void> saveSpecialty(MedicalSpecialty specialty);  // local
  Future<void> saveSpecialties(List<MedicalSpecialty> specialties);  // local
  Future<void> deleteAllSpecialties();  // local
}