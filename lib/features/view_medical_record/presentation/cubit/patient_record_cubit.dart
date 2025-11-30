import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/patient_record.dart';
import '../../domain/repositories/medical_record_repository.dart';
import 'patient_record_state.dart';

class PatientRecordCubit extends Cubit<PatientRecordState> {
  final MedicalRecordRepository _repo;

  PatientRecordCubit(this._repo) : super(PatientRecordInitial());

  Future<void> getAllPatientRecords() async {
    emit(PatientRecordInitial());
    try {
      final patientRecords = await _repo.getAllPatientRecords();
      patientRecords.sort();
      emit(PatientRecordGetAllSuccess(patientRecords));
    } catch (e) {
      emit(PatientRecordGetAllFailure(e.toString()));
    }
  }

  Future<void> getDetailPatientRecord(PatientRecord patientRecord) async {
    emit(PatientRecordInitial());
    try {
      final newPatientRecord =
          await _repo.getDetailPatientRecord(patientRecord);
      if (newPatientRecord != null) {
        emit(PatientRecordGetDetailSuccess(newPatientRecord));
        return;
      }
      emit(PatientRecordGetDetailFailure("Không có dữ liệu"));
    } catch (e) {
      emit(PatientRecordGetDetailFailure(e.toString()));
    }
  }
}
