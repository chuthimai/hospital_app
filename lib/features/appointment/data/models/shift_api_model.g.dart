// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShiftApiModel _$ShiftApiModelFromJson(Map<String, dynamic> json) =>
    ShiftApiModel(
      identifier: (json['identifier'] as num).toInt(),
      name: json['name'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
    );

Map<String, dynamic> _$ShiftApiModelToJson(ShiftApiModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'name': instance.name,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
