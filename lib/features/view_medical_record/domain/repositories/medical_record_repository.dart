import 'package:hospital_app/features/view_medical_record/domain/entities/patient_record.dart';

abstract class MedicalRecordRepository {
  Future<List<PatientRecord>> getAllPatientRecords();
  Future<PatientRecord> getDetailPatientRecord(PatientRecord patientRecord);
  Future<void> deleteAllPatientRecords();
}