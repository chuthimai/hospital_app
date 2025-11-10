// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceApiModel _$ServiceApiModelFromJson(Map<String, dynamic> json) =>
    ServiceApiModel(
      identifier: (json['identifier'] as num).toInt(),
      name: json['name'] as String,
      detailDescription: json['detailDescription'] as String?,
      location: json['location'] == null
          ? null
          : LocationApiModel.fromJson(json['location'] as Map<String, dynamic>),
      assessmentItems: (json['assessmentItems'] as List<dynamic>?)
              ?.map((e) =>
                  AssessmentItemApiModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ServiceApiModelToJson(ServiceApiModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'name': instance.name,
      'detailDescription': instance.detailDescription,
      'location': instance.location?.toJson(),
      'assessmentItems':
          instance.assessmentItems.map((e) => e.toJson()).toList(),
    };
