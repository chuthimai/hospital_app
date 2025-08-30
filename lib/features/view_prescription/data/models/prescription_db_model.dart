import 'package:isar/isar.dart';
import '../../domain/entities/prescription.dart';
import 'prescribed_medication_db_model.dart';

part 'prescription_db_model.g.dart';

@collection
class PrescriptionDbModel {
  Id id = 0;
  late DateTime createTime;

  // Quan hệ 1-n tới PrescribedMedicationDbModel
  final prescribedMedications = IsarLinks<PrescribedMedicationDbModel>();

  PrescriptionDbModel({
    required this.id,
    required this.createTime,
  });

  factory PrescriptionDbModel.fromEntity(Prescription entity) {
    final model = PrescriptionDbModel(
      id: entity.id,
      createTime: entity.createTime,
    );

    // convert prescribedMedications
    model.prescribedMedications.addAll(
      entity.prescribedMedications
          .map((pm) => PrescribedMedicationDbModel.fromEntity(pm)),
    );
    return model;
  }

  Prescription toEntity() {
    return Prescription(
      id: id,
      createTime: createTime,
      prescribedMedications: prescribedMedications
          .map((pm) => pm.toEntity())
          .toList(),
    );
  }
}
