import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/medication.dart';

part 'medication_api_model.g.dart';

@JsonSerializable()
class MedicationApiModel {
  final int id;
  final String name;
  final String doseForm;

  MedicationApiModel({
    required this.id,
    required this.name,
    required this.doseForm,
  });

  factory MedicationApiModel.fromJson(Map<String, dynamic> json) =>
      _$MedicationApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$MedicationApiModelToJson(this);

  factory MedicationApiModel.fromEntity(Medication medication) =>
      MedicationApiModel(
        id: medication.id,
        name: medication.name,
        doseForm: medication.doseForm,
      );

  Medication toEntity() => Medication(
    id: id,
    name: name,
    doseForm: doseForm,
  );
}
