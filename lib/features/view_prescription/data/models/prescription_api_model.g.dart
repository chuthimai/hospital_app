// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrescriptionApiModel _$PrescriptionApiModelFromJson(
        Map<String, dynamic> json) =>
    PrescriptionApiModel(
      id: (json['id'] as num).toInt(),
      createTime: DateTime.parse(json['createTime'] as String),
      prescribedMedications: (json['prescribedMedications'] as List<dynamic>?)
              ?.map((e) => PrescribedMedicationApiModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PrescriptionApiModelToJson(
        PrescriptionApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createTime': instance.createTime.toIso8601String(),
      'prescribedMedications':
          instance.prescribedMedications.map((e) => e.toJson()).toList(),
    };
