// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationApiModel _$LocationApiModelFromJson(Map<String, dynamic> json) =>
    LocationApiModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      partOfLocation: json['partOfLocation'] == null
          ? null
          : LocationApiModel.fromJson(
              json['partOfLocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationApiModelToJson(LocationApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'partOfLocation': instance.partOfLocation?.toJson(),
    };
