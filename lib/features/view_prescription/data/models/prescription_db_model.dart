import 'package:isar/isar.dart';
import '../../../view_doctor/data/models/physician_db_model.dart';
import '../../domain/entities/prescription.dart';
import 'prescribed_medication_db_model.dart';

part 'prescription_db_model.g.dart';

@collection
class PrescriptionDbModel {
  Id id = 0;
  late DateTime createdTime;
  String? note;
  final performer = IsarLink<PhysicianDbModel>();

  // Quan hệ 1-n tới PrescribedMedicationDbModel
  final prescribedMedications = IsarLinks<PrescribedMedicationDbModel>();

  PrescriptionDbModel({
    required this.id,
    required this.createdTime,
    this.note,
  });

  factory PrescriptionDbModel.fromEntity(Prescription entity) {
    final model = PrescriptionDbModel(
      id: entity.id,
      createdTime: entity.createdTime,
      note: entity.note,
    );

    // convert prescribedMedications
    model.prescribedMedications.addAll(
      entity.prescribedMedications
          .map((pm) => PrescribedMedicationDbModel.fromEntity(pm)),
    );

    if (entity.performer != null) {
      model.performer.value = PhysicianDbModel.fromEntity(entity.performer!);
    }

    return model;
  }

  Future<Prescription> toEntity() async {
    await Future.wait([
      prescribedMedications.load(),
      performer.load(),
    ]);

    return Prescription(
      id: id,
      createdTime: createdTime,
      performer: await performer.value?.toEntity(),
      prescribedMedications: await Future.wait(
          prescribedMedications.map((pm) => pm.toEntity())
      ),
      note: note,
    );
  }
}
