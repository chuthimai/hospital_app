import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/prescribed_medication.dart';
import 'medication_api_model.dart';

part 'prescribed_medication_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PrescribedMedicationApiModel {
  final int identifier;
  final MedicationApiModel medication;
  final int quantity;
  final String dosageInstruction;

  PrescribedMedicationApiModel({
    required this.identifier,
    required this.medication,
    required this.quantity,
    required this.dosageInstruction,
  });

  factory PrescribedMedicationApiModel.fromJson(Map<String, dynamic> json) =>
      _$PrescribedMedicationApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$PrescribedMedicationApiModelToJson(this);

  factory PrescribedMedicationApiModel.fromEntity(PrescribedMedication entity) =>
      PrescribedMedicationApiModel(
        identifier: entity.id,
        medication: MedicationApiModel.fromEntity(entity.medication),
        quantity: entity.quantity,
        dosageInstruction: entity.dosageInstruction,
      );

  PrescribedMedication toEntity() => PrescribedMedication(
    id: identifier,
    medication: medication.toEntity(),
    quantity: quantity,
    dosageInstruction: dosageInstruction,
  );
}
