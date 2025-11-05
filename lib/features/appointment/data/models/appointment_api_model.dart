import 'package:hospital_app/features/view_doctor/data/models/physician_api_model.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/appointment.dart';
import '../../domain/entities/enum/appointment_status.dart';
import 'work_schedule_api_model.dart';

part 'appointment_api_model.g.dart';

@JsonSerializable()
class AppointmentApiModel {
  final int identifier;
  final bool status;
  final String? reason;
  final DateTime? cancellationDate;
  final WorkScheduleApiModel workSchedule;
  final PhysicianApiModel? physician;

  AppointmentApiModel({
    required this.identifier,
    required this.status,
    this.reason,
    this.cancellationDate,
    required this.workSchedule,
    this.physician,
  });

  factory AppointmentApiModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentApiModelToJson(this);

  Appointment toEntity() {
    AppointmentStatus localStatus = AppointmentStatus.booked;
    if (status == false) {
      reason != null ?
      localStatus = AppointmentStatus.cancelled :
      localStatus = AppointmentStatus.checkedIn;
    }

    return Appointment(
      id: identifier,
      status: localStatus,
      reason: reason,
      cancellationDate: cancellationDate,
      workSchedule: workSchedule.toEntity(),
      physician: physician?.toEntity(),
    );
  }
}


