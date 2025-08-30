// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicationApiModel _$MedicationApiModelFromJson(Map<String, dynamic> json) =>
    MedicationApiModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      doseForm: json['doseForm'] as String,
    );

Map<String, dynamic> _$MedicationApiModelToJson(MedicationApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doseForm': instance.doseForm,
    };
