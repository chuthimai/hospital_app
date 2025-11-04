
import '../models/patient_record_db_model.dart';

abstract class MedicalRecordLocalDataSource {
  Future<List<PatientRecordDbModel>> getAllPatientRecords();
  Future<PatientRecordDbModel> getDetailPatientRecord(PatientRecordDbModel patientRecord);
  Future<void> savePatientRecord(PatientRecordDbModel patientRecord);
  Future<void> deleteAllPatientRecords();
  Future<bool> isSavedPatientRecord(PatientRecordDbModel patientRecord);
}