import 'package:json_annotation/json_annotation.dart';
import '../../../view_doctor/data/models/physician_api_model.dart';
import '../../domain/entities/prescription.dart';
import 'prescribed_medication_api_model.dart';

part 'prescription_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PrescriptionApiModel {
  final int identifier;
  final DateTime createdTime;
  final List<PrescribedMedicationApiModel> prescribedMedications;
  final PhysicianApiModel? physician;
  final String? advice;

  PrescriptionApiModel({
    required this.identifier,
    required this.createdTime,
    this.prescribedMedications = const [],
    this.physician,
    this.advice,
  });

  factory PrescriptionApiModel.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$PrescriptionApiModelToJson(this);

  factory PrescriptionApiModel.fromEntity(Prescription entity) {
    return PrescriptionApiModel(
      identifier: entity.id,
      createdTime: entity.createdTime,
      prescribedMedications: entity.prescribedMedications
          .map((pm) => PrescribedMedicationApiModel.fromEntity(pm))
          .toList(),
      physician: entity.performer != null
          ? PhysicianApiModel.fromEntity(entity.performer!)
          : null,
      advice: entity.note,
    );
  }

  Prescription toEntity() => Prescription(
        id: identifier,
        createdTime: createdTime,
        prescribedMedications:
            prescribedMedications.map((pm) => pm.toEntity()).toList(),
        performer: physician?.toEntity(),
        note: advice,
      );
}
