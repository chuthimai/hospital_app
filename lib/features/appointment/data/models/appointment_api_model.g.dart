// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentApiModel _$AppointmentApiModelFromJson(Map<String, dynamic> json) =>
    AppointmentApiModel(
      identifier: (json['identifier'] as num).toInt(),
      status: json['status'] as bool,
      reason: json['reason'] as String?,
      cancellationDate: json['cancellationDate'] == null
          ? null
          : DateTime.parse(json['cancellationDate'] as String),
      workSchedule: WorkScheduleApiModel.fromJson(
          json['workSchedule'] as Map<String, dynamic>),
      physician: json['physician'] == null
          ? null
          : PhysicianApiModel.fromJson(
              json['physician'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppointmentApiModelToJson(
        AppointmentApiModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'status': instance.status,
      'reason': instance.reason,
      'cancellationDate': instance.cancellationDate?.toIso8601String(),
      'workSchedule': instance.workSchedule,
      'physician': instance.physician,
    };
