import 'package:hospital_app/features/view_prescription/domain/entities/prescription.dart';

abstract class PrescriptionRepository {
  Future<List<Prescription>> getAllPrescriptions();  // api + db
  Future<Prescription> getDetailPrescription(Prescription prescription);  // api + db
  Future<void> deleteAllPrescriptions();  // db
  Future<void> savePrescription(Prescription prescription);  // db
}