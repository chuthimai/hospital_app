import 'package:isar/isar.dart';
import '../../domain/entities/prescribed_medication.dart';
import '../../domain/entities/medication.dart';
import 'medication_db_model.dart';

part 'prescribed_medication_db_model.g.dart';

@collection
class PrescribedMedicationDbModel {
  Id id = 0;
  late int quantity;
  late String dosageInstruction;
  String? note;

  // Quan hệ 1-1 tới Medication
  final medication = IsarLink<MedicationDbModel>();

  PrescribedMedicationDbModel({
    required this.id,
    required this.quantity,
    required this.dosageInstruction,
    this.note,
  });

  factory PrescribedMedicationDbModel.fromEntity(PrescribedMedication entity) {
    final model = PrescribedMedicationDbModel(
      id: entity.id,
      quantity: entity.quantity,
      dosageInstruction: entity.dosageInstruction,
      note: entity.note,
    );
    model.medication.value = MedicationDbModel.fromEntity(entity.medication);
    return model;
  }

  PrescribedMedication toEntity() {
    return PrescribedMedication(
      id: id,
      medication: medication.value?.toEntity() ??
          Medication(id: 0, name: '', doseForm: ''), // fallback tránh null
      quantity: quantity,
      dosageInstruction: dosageInstruction,
      note: note,
    );
  }
}
