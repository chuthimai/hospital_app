import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/prescribed_medication.dart';
import 'medication_api_model.dart';

part 'prescribed_medication_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PrescribedMedicationApiModel {
  final int id;
  final MedicationApiModel medication;
  final int quantity;
  final String dosageInstruction;
  final String? note;

  PrescribedMedicationApiModel({
    required this.id,
    required this.medication,
    required this.quantity,
    required this.dosageInstruction,
    this.note,
  });

  factory PrescribedMedicationApiModel.fromJson(Map<String, dynamic> json) =>
      _$PrescribedMedicationApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$PrescribedMedicationApiModelToJson(this);

  factory PrescribedMedicationApiModel.fromEntity(PrescribedMedication entity) =>
      PrescribedMedicationApiModel(
        id: entity.id,
        medication: MedicationApiModel.fromEntity(entity.medication),
        quantity: entity.quantity,
        dosageInstruction: entity.dosageInstruction,
        note: entity.note,
      );

  PrescribedMedication toEntity() => PrescribedMedication(
    id: id,
    medication: medication.toEntity(),
    quantity: quantity,
    dosageInstruction: dosageInstruction,
    note: note,
  );
}
