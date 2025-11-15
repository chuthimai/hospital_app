// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescribed_medication_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrescribedMedicationApiModel _$PrescribedMedicationApiModelFromJson(
        Map<String, dynamic> json) =>
    PrescribedMedicationApiModel(
      identifier: (json['identifier'] as num).toInt(),
      medication: MedicationApiModel.fromJson(
          json['medication'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num).toInt(),
      dosageInstruction: json['dosageInstruction'] as String,
    );

Map<String, dynamic> _$PrescribedMedicationApiModelToJson(
        PrescribedMedicationApiModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'medication': instance.medication.toJson(),
      'quantity': instance.quantity,
      'dosageInstruction': instance.dosageInstruction,
    };
