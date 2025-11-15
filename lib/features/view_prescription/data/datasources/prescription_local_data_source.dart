import 'package:hospital_app/features/view_doctor/data/models/medical_specialty_db_model.dart';
import 'package:hospital_app/features/view_doctor/data/models/physician_db_model.dart';
import 'package:hospital_app/features/view_prescription/data/models/prescribed_medication_db_model.dart';
import 'package:hospital_app/features/view_prescription/data/models/prescription_db_model.dart';
import 'package:hospital_app/share/db/isar_service.dart';

import 'package:isar/isar.dart';

import '../../domain/entities/prescription.dart';
import '../models/medication_db_model.dart';

abstract class PrescriptionLocalDataSource {
  Future<List<PrescriptionDbModel>> getAllPrescriptions();

  Future<PrescriptionDbModel?> getDetailPrescription(
      PrescriptionDbModel prescriptionDbModel);

  Future<void> savePrescription(Prescription prescription);

  Future<void> deleteAllPrescriptions();

  Future<int> getLastId();
}

class PrescriptionLocalDataSourceImpl implements PrescriptionLocalDataSource {
  Future<Isar> get _isar async => await IsarService.instance;

  @override
  Future<void> deleteAllPrescriptions() async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.prescriptionDbModels.clear();
      await isar.prescribedMedicationDbModels.clear();
      await isar.medicationDbModels.clear();
    });
  }

  @override
  Future<List<PrescriptionDbModel>> getAllPrescriptions() async {
    final isar = await _isar;
    return await isar.prescriptionDbModels.where().findAll();
  }

  @override
  Future<PrescriptionDbModel?> getDetailPrescription(
      PrescriptionDbModel prescription) async {
    final isar = await _isar;
    return await isar.prescriptionDbModels.get(prescription.id);
  }

  @override
  Future<void> savePrescription(Prescription prescription) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      final prescriptionDb = PrescriptionDbModel.fromEntity(prescription);
      if (prescription.performer != null) {
        await _savePhysician(isar, prescription);
      }
      await _savePrescribedMedications(isar, prescription);

      await isar.prescriptionDbModels.put(prescriptionDb);
      await prescriptionDb.prescribedMedications.save();
      await prescriptionDb.performer.save();
    });
  }

  Future<void> _savePhysician(Isar isar, Prescription prescription) async {
    final physicianDb = PhysicianDbModel.fromEntity(prescription.performer!);
    await isar.medicalSpecialtyDbModels.put(
        MedicalSpecialtyDbModel.fromEntity(
            prescription.performer!.specialty!));
    await isar.physicianDbModels.put(physicianDb);
    await physicianDb.specialty.save();
  }

  Future<void> _savePrescribedMedications(Isar isar, Prescription prescription) async {
    prescription.prescribedMedications.forEach((prescribedMedication) async {
      await isar.medicationDbModels
          .put(MedicationDbModel.fromEntity(prescribedMedication.medication));

      final prescribedMedicationDb =
      PrescribedMedicationDbModel.fromEntity(prescribedMedication);
      await isar.prescribedMedicationDbModels.put(prescribedMedicationDb);

      await prescribedMedicationDb.medication.save();
    });
  }


  @override
  Future<int> getLastId() async {
    final isar = await _isar;
    final last =
        await isar.prescriptionDbModels.where(sort: Sort.desc).findFirst();
    return last?.id ?? 0;
  }
}
