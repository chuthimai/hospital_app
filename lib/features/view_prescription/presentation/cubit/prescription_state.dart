import '../../domain/entities/prescription.dart';

abstract class PrescriptionState {}

class PrescriptionInitial extends PrescriptionState {}

class PrescriptionGetAllSuccess extends PrescriptionState {
  final List<Prescription> prescriptions;

  PrescriptionGetAllSuccess(this.prescriptions);
}

class PrescriptionGetAllFailure extends PrescriptionState {
  final String message;
  PrescriptionGetAllFailure(String message)
      : message = message.replaceFirst("Exception: ", "");
}

class PrescriptionGetDetailSuccess extends PrescriptionState {
  final Prescription prescription;

  PrescriptionGetDetailSuccess(this.prescription);
}

class PrescriptionGetDetailFailure extends PrescriptionState {
  final String message;
  PrescriptionGetDetailFailure(String message)
      : message = message.replaceFirst("Exception: ", "");
}