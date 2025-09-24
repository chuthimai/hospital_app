// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_schedule_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkScheduleApiModel _$WorkScheduleApiModelFromJson(
        Map<String, dynamic> json) =>
    WorkScheduleApiModel(
      identifier: (json['identifier'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      shiftIdentifier: (json['shiftIdentifier'] as num).toInt(),
    );

Map<String, dynamic> _$WorkScheduleApiModelToJson(
        WorkScheduleApiModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'date': instance.date.toIso8601String(),
      'shiftIdentifier': instance.shiftIdentifier,
    };
