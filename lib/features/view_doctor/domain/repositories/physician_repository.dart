import '../entities/physician.dart';

abstract class PhysicianRepository {
  Future<List<Physician>> getAllPhysicians();  // api + local
  Future<List<Physician>> getAllNewPhysicians(int lastId);  // api
  Future<int> getLastId();  // local
  Future<void> savePhysician(Physician doctor);  // local
  Future<void> savePhysicians(List<Physician> doctors);  // local
  Future<Physician> getPhysicianDetail(Physician doctor);  // api
  Future<void> deleteAllPhysician();  // local
}