import '../entities/patient_record.dart';

abstract class MedicalRecordRepository {
  Future<List<PatientRecord>> getAllPatientRecords();  // api + local
  Future<PatientRecord?> getDetailPatientRecord(PatientRecord patientRecord);  // api + local
  // Chỉ lưu patientRecord đã đóng
  Future<PatientRecord?> savePatientRecord(PatientRecord patientRecord);  // local
  Future<void> deleteAllPatientRecords();  // local
}