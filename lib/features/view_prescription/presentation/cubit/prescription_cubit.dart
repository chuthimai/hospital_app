import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/prescription.dart';
import '../../domain/repositories/pescription_repository.dart';
import 'prescription_state.dart';

class PrescriptionCubit extends Cubit<PrescriptionState> {
  final PrescriptionRepository _repo;

  PrescriptionCubit(this._repo): super(PrescriptionInitial());

  Future<void> getAllPrescriptions() async {
    emit(PrescriptionInitial());
    try {
      final prescriptions = await _repo.getAllPrescriptions();
      prescriptions.sort();
      emit(PrescriptionGetAllSuccess(prescriptions));
    } catch(e) {
      emit(PrescriptionGetAllFailure(e.toString()));
    }
  }

  Future<void> getDetailPrescription(Prescription prescription) async {
    emit(PrescriptionInitial());
    try {
      final detailPrescription = await _repo.getDetailPrescription(prescription);
      emit(PrescriptionGetDetailSuccess(detailPrescription));
    } catch(e) {
      emit(PrescriptionGetDetailFailure(e.toString()));
    }
  }
}