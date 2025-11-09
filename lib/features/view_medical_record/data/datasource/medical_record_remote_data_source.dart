
import '../models/patient_record_api_model.dart';

abstract class MedicalRecordRemoteDataSource {
  Future<List<PatientRecordApiModel>> getAllPatientRecords();
  Future<PatientRecordApiModel> getDetailPatientRecord(PatientRecordApiModel patientRecord);
}

class MedicalRecordRemoteDataSourceImpl implements MedicalRecordRemoteDataSource {
  @override
  Future<List<PatientRecordApiModel>> getAllPatientRecords() {
    // TODO: implement getAllPatientRecords
    throw UnimplementedError();
  }

  @override
  Future<PatientRecordApiModel> getDetailPatientRecord(PatientRecordApiModel patientRecord) {
    // TODO: implement getDetailPatientRecord
    throw UnimplementedError();
  }
  
}