
import '../entities/patient_record.dart';

abstract class MedicalRecordRepository {
  Future<List<PatientRecord>> getAllPatientRecords();  // api + local
  Future<List<PatientRecord>> getNewestPatientRecords(); // api
  Future<PatientRecord> getDetailPatientRecord(PatientRecord patientRecord);  // api + local
  Future<void> savePatientRecord(PatientRecord patientRecord);  // local
  Future<void> savePatientRecords(List<PatientRecord> patientRecords);  // local
  Future<void> deleteAllPatientRecords();  // local
}