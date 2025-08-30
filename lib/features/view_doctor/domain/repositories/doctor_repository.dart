import '../entities/doctor.dart';

abstract class DoctorRepository {
  Future<List<Doctor>> getAllDoctors();
  Future<List<Doctor>> getAllNewDoctors(int lastId);
  Future<void> deleteAllDoctor();
}