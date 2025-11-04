
import '../models/patient_record_api_model.dart';

abstract class MedicalRecordRemoteDataSource {
  Future<List<PatientRecordApiModel>> getAllPatientRecords();
  Future<PatientRecordApiModel> getDetailPatientRecord(PatientRecordApiModel patientRecord);
}