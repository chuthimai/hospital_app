import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/shift.dart';
import '../../domain/entities/work_schedule.dart';
import 'shift_api_model.dart';

part 'work_schedule_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class WorkScheduleApiModel {
  final int identifier;
  final DateTime date;
  final int? shiftIdentifier;
  final ShiftApiModel? shift;

  WorkScheduleApiModel({
    required this.identifier,
    required this.date,
    this.shiftIdentifier,
    this.shift,
  });

  factory WorkScheduleApiModel.fromJson(Map<String, dynamic> json) =>
      _$WorkScheduleApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkScheduleApiModelToJson(this);

  WorkSchedule toEntity() {
    WorkSchedule workSchedule = WorkSchedule(
      id: identifier,
      date: date,
    );
    if (shiftIdentifier != null) {
      workSchedule.setShift(Shift(id: shiftIdentifier!));
    }
    if (shift != null) {
      workSchedule.setShift(shift!.toEntity());
    }
    return workSchedule;
  }
}
