// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qualification_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QualificationApiModel _$QualificationApiModelFromJson(
        Map<String, dynamic> json) =>
    QualificationApiModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      specialty: json['specialty'] as String,
      issuer: json['issuer'] as String,
      type: json['type'] as String,
      effectiveDate: DateTime.parse(json['effectiveDate'] as String),
      expiredDate: json['expiredDate'] == null
          ? null
          : DateTime.parse(json['expiredDate'] as String),
    );

Map<String, dynamic> _$QualificationApiModelToJson(
        QualificationApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'specialty': instance.specialty,
      'issuer': instance.issuer,
      'type': instance.type,
      'effectiveDate': instance.effectiveDate.toIso8601String(),
      'expiredDate': instance.expiredDate?.toIso8601String(),
    };
