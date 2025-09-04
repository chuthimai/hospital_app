import '../entities/doctor.dart';

abstract class DoctorRepository {
  Future<List<Doctor>> getAllDoctors();
  Future<List<Doctor>> getAllNewDoctors(int lastId);
  Future<void> saveDoctor(Doctor doctor);
  Future<void> saveDoctors(List<Doctor> doctors);
  Future<Doctor> getDoctorDetail(Doctor doctor);
  Future<void> deleteAllDoctor();
}