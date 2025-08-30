import 'package:hospital_app/features/view_prescription/data/models/prescribed_medication_db_model.dart';
import 'package:hospital_app/features/view_prescription/data/models/prescription_db_model.dart';
import 'package:hospital_app/share/db/isar_service.dart';

import 'package:isar/isar.dart';

import '../models/medication_db_model.dart';

abstract class PrescriptionLocalDataSource {
  Future<List<PrescriptionDbModel>> getAllPrescriptions();
  Future<PrescriptionDbModel> getDetailPrescription(PrescriptionDbModel prescriptionDbModel);
  Future<void> savePrescription(PrescriptionDbModel prescription);
  Future<void> savePrescriptions(List<PrescriptionDbModel> prescriptions);
  Future<void> saveDetailPrescription(PrescriptionDbModel prescription);
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
    });
  }

  @override
  Future<List<PrescriptionDbModel>> getAllPrescriptions() async {
    final isar = await _isar;
    return await isar.prescriptionDbModels.where().findAll();
  }

  @override
  Future<PrescriptionDbModel> getDetailPrescription(PrescriptionDbModel prescription) async {
    await prescription.prescribedMedications.load();

    for (final pm in prescription.prescribedMedications) {
      await pm.medication.load();
    }

    return prescription;
  }

  @override
  Future<void> savePrescription(PrescriptionDbModel prescription) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.prescriptionDbModels.put(prescription);
      await prescription.prescribedMedications.save();
    });
  }

  @override
  Future<void> savePrescriptions(List<PrescriptionDbModel> prescriptions) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.prescriptionDbModels.putAll(prescriptions);
      for (final p in prescriptions) {
        await p.prescribedMedications.save();
      }
    });
  }

  @override
  Future<void> saveDetailPrescription(PrescriptionDbModel prescription) async {
    final isar = await _isar;

    await isar.writeTxn(() async {
      await _savePrescription(isar, prescription);
      await _savePrescribedMedications(isar, prescription);
      await _saveLinks(isar, prescription);
    });
  }

  @override
  Future<int> getLastId() async {
    final isar = await _isar;
    final last = await isar.prescriptionDbModels.where(sort: Sort.desc).findFirst();
    return last?.id ?? 0;
  }

  /// Lưu prescription
  Future<void> _savePrescription(Isar isar, PrescriptionDbModel prescription) async {
    await isar.prescriptionDbModels.put(prescription);
  }

  /// Lưu danh sách prescribed medications + medications
  Future<void> _savePrescribedMedications(Isar isar, PrescriptionDbModel prescription) async {
    if (prescription.prescribedMedications.isEmpty) return;

    // Lưu PrescribedMedication
    await isar.prescribedMedicationDbModels.putAll(
      prescription.prescribedMedications.toList(),
    );

    // Lưu Medication
    final meds = prescription.prescribedMedications
        .map((pm) => pm.medication.value)
        .whereType<MedicationDbModel>()
        .toList();

    if (meds.isNotEmpty) {
      await isar.medicationDbModels.putAll(meds);
    }
  }

  /// Lưu quan hệ links:
  /// - PrescribedMedication -> Medication
  /// - Prescription -> PrescribedMedications
  Future<void> _saveLinks(Isar isar, PrescriptionDbModel prescription) async {
    if (prescription.prescribedMedications.isEmpty) return;

    for (final pm in prescription.prescribedMedications) {
      await pm.medication.save();
    }

    await prescription.prescribedMedications.save();
  }

}
