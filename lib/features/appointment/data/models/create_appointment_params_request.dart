import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/create_appointment_prams.dart';

part 'create_appointment_params_request.g.dart';

@JsonSerializable()
class CreateAppointmentParamsRequest {
  final int workScheduleIdentifier;
  final int? physicianIdentifier;
  final int userIdentifier;

  CreateAppointmentParamsRequest({
    required this.workScheduleIdentifier,
    this.physicianIdentifier,
    required this.userIdentifier,
  });

  factory CreateAppointmentParamsRequest.fromParams(
      CreateAppointmentParams params) {
    return CreateAppointmentParamsRequest(
      workScheduleIdentifier: params.workScheduleIdentifier,
      physicianIdentifier: params.physicianIdentifier,
      userIdentifier: params.userIdentifier,
    );
  }

  factory CreateAppointmentParamsRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAppointmentParamsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAppointmentParamsRequestToJson(this);
}
