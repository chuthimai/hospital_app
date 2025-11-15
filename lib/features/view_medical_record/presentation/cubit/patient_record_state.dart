import '../../domain/entities/patient_record.dart';

abstract class PatientRecordState {}

class PatientRecordInitial extends PatientRecordState {}

class PatientRecordGetAllSuccess extends PatientRecordState {
  final List<PatientRecord> patientRecords;

  PatientRecordGetAllSuccess(this.patientRecords);
}

class PatientRecordGetAllFailure extends PatientRecordState {
  final String message;
  PatientRecordGetAllFailure(String message)
      : message = message.replaceFirst("Exception: ", "");
}

class PatientRecordGetDetailSuccess extends PatientRecordState {
  final PatientRecord patientRecord;

  PatientRecordGetDetailSuccess(this.patientRecord);
}

class PatientRecordGetDetailFailure extends PatientRecordState {
  final String message;
  PatientRecordGetDetailFailure(String message)
      : message = message.replaceFirst("Exception: ", "");
}
