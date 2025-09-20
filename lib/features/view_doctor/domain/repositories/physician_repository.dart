import '../entities/physician.dart';

abstract class PhysicianRepository {
  Future<List<Physician>> getAllPhysicians();  // api
  Future<List<Physician>> getAllNewPhysicians();  // api
  Future<int> getLastId();  // local
  Future<void> savePhysician(Physician doctor);  // local
  Future<void> savePhysicians(List<Physician> doctors);  // local
  Future<Physician> getPhysicianDetail(Physician doctor);  // api
  Future<void> deleteAllPhysician();  // local
  Future<List<Physician>> getAllPhysiciansInSpecialty(int medicalSpecialtyId);  // api
}