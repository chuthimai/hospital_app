import '../entities/specialty.dart';

abstract class SpecialtyRepository {
  Future<List<Specialty>> getAllSpecialties();  // api + local
  Future<List<Specialty>> getAllNewSpecialties(int lastId);  // api
  Future<int> getLastId();
  Future<void> saveSpecialty(Specialty specialty);  // local
  Future<void> saveSpecialties(List<Specialty> specialties);  // local
  Future<void> deleteAllSpecialties();  // local
}