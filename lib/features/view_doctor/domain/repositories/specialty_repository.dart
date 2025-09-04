
import '../entities/specialty.dart';

abstract class SpecialtyRepository {
  Future<List<Specialty>> getAllSpecialties();
  Future<List<Specialty>> getAllNewSpecialties(int lastId);
  Future<void> saveSpecialty(Specialty specialty);
  Future<void> saveSpecialties(List<Specialty> specialties);
  Future<void> deleteAllSpecialties();
}