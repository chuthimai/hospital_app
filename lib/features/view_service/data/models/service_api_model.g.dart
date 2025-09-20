// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceApiModel _$ServiceApiModelFromJson(Map<String, dynamic> json) =>
    ServiceApiModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      extraDetails: json['extraDetails'] as String?,
      location:
          LocationApiModel.fromJson(json['location'] as Map<String, dynamic>),
      isCompleted: json['isCompleted'] as bool? ?? true,
    );

Map<String, dynamic> _$ServiceApiModelToJson(ServiceApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'extraDetails': instance.extraDetails,
      'location': instance.location.toJson(),
      'isCompleted': instance.isCompleted,
    };
