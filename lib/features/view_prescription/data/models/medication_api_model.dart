import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/enum/snomedct_form_codes.dart';
import '../../domain/entities/medication.dart';

part 'medication_api_model.g.dart';

@JsonSerializable()
class MedicationApiModel {
  final int identifier;
  final String name;
  final String doseForm;

  MedicationApiModel({
    required this.identifier,
    required this.name,
    required this.doseForm,
  });

  factory MedicationApiModel.fromJson(Map<String, dynamic> json) =>
      _$MedicationApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$MedicationApiModelToJson(this);

  factory MedicationApiModel.fromEntity(Medication medication) =>
      MedicationApiModel(
        identifier: medication.id,
        name: medication.name,
        doseForm: medication.doseForm.name,
      );

  Medication toEntity() => Medication(
    id: identifier,
    name: name,
    doseForm: SNOMEDCTFormCodesExt.fromCode(doseForm),
  );
}
