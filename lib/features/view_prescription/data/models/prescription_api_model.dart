import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/prescription.dart';
import 'prescribed_medication_api_model.dart';

part 'prescription_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PrescriptionApiModel {
  final int id;
  final DateTime createTime;
  final List<PrescribedMedicationApiModel> prescribedMedications;

  PrescriptionApiModel({
    required this.id,
    required this.createTime,
    this.prescribedMedications = const [],
  });

  factory PrescriptionApiModel.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$PrescriptionApiModelToJson(this);

  factory PrescriptionApiModel.fromEntity(Prescription entity) =>
      PrescriptionApiModel(
        id: entity.id,
        createTime: entity.createTime,
        prescribedMedications: entity.prescribedMedications
            .map((pm) => PrescribedMedicationApiModel.fromEntity(pm))
            .toList(),
      );

  Prescription toEntity() => Prescription(
    id: id,
    createTime: createTime,
    prescribedMedications:
    prescribedMedications.map((pm) => pm.toEntity()).toList(),
  );
}
