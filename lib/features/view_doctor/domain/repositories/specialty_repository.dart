import '../entities/medical_specialty.dart';

abstract class SpecialtyRepository {
  Future<List<MedicalSpecialty>> getAllSpecialties();  // api + local
  Future<List<MedicalSpecialty>> getAllNewSpecialties(int lastId);  // api
  Future<int> getLastId();
  Future<void> saveSpecialty(MedicalSpecialty specialty);  // local
  Future<void> saveSpecialties(List<MedicalSpecialty> specialties);  // local
  Future<void> deleteAllSpecialties();  // local
}