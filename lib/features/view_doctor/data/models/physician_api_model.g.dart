// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'physician_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhysicianApiModel _$PhysicianApiModelFromJson(Map<String, dynamic> json) =>
    PhysicianApiModel(
      identifier: (json['identifier'] as num).toInt(),
      name: json['name'] as String,
      gender: json['gender'] as bool?,
      role: json['role'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      photo: json['photo'] as String?,
      specialty: json['specialty'] == null
          ? null
          : MedicalSpecialtyApiModel.fromJson(
              json['specialty'] as Map<String, dynamic>),
      qualifications: (json['qualifications'] as List<dynamic>?)
              ?.map((e) =>
                  QualificationApiModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PhysicianApiModelToJson(PhysicianApiModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'name': instance.name,
      'gender': instance.gender,
      'role': instance.role,
      'birthDate': instance.birthDate?.toIso8601String(),
      'photo': instance.photo,
      'specialty': instance.specialty,
      'qualifications': instance.qualifications,
    };
