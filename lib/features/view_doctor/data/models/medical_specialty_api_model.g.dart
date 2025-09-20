// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_specialty_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicalSpecialtyApiModel _$MedicalSpecialtyApiModelFromJson(
        Map<String, dynamic> json) =>
    MedicalSpecialtyApiModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$MedicalSpecialtyApiModelToJson(
        MedicalSpecialtyApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
