// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_appointment_params_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAppointmentParamsRequest _$CreateAppointmentParamsRequestFromJson(
        Map<String, dynamic> json) =>
    CreateAppointmentParamsRequest(
      workScheduleIdentifier: (json['workScheduleIdentifier'] as num).toInt(),
      physicianIdentifier: (json['physicianIdentifier'] as num?)?.toInt(),
      userIdentifier: (json['userIdentifier'] as num).toInt(),
    );

Map<String, dynamic> _$CreateAppointmentParamsRequestToJson(
        CreateAppointmentParamsRequest instance) =>
    <String, dynamic>{
      'workScheduleIdentifier': instance.workScheduleIdentifier,
      'physicianIdentifier': instance.physicianIdentifier,
      'userIdentifier': instance.userIdentifier,
    };
