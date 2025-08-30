import 'package:hospital_app/features/view_prescription/domain/entities/prescription.dart';

abstract class PrescriptionRepository {
  Future<List<Prescription>> getAllPrescriptions();
  Future<Prescription> getDetailPrescription(Prescription prescription);
  Future<void> deleteAllPrescriptions();
}