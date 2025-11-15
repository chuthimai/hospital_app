// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrescriptionApiModel _$PrescriptionApiModelFromJson(
        Map<String, dynamic> json) =>
    PrescriptionApiModel(
      identifier: (json['identifier'] as num).toInt(),
      createdTime: DateTime.parse(json['createdTime'] as String),
      prescribedMedications: (json['prescribedMedications'] as List<dynamic>?)
              ?.map((e) => PrescribedMedicationApiModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      physician: json['physician'] == null
          ? null
          : PhysicianApiModel.fromJson(
              json['physician'] as Map<String, dynamic>),
      advice: json['advice'] as String?,
    );

Map<String, dynamic> _$PrescriptionApiModelToJson(
        PrescriptionApiModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'createdTime': instance.createdTime.toIso8601String(),
      'prescribedMedications':
          instance.prescribedMedications.map((e) => e.toJson()).toList(),
      'physician': instance.physician?.toJson(),
      'advice': instance.advice,
    };
