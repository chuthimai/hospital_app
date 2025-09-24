import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/shift.dart';
import '../../domain/entities/work_schedule.dart';

part 'work_schedule_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class WorkScheduleApiModel {
  final int identifier;
  final DateTime date;
  final int shiftIdentifier;

  WorkScheduleApiModel({
    required this.identifier,
    required this.date,
    required this.shiftIdentifier,
  });

  factory WorkScheduleApiModel.fromJson(Map<String, dynamic> json) =>
      _$WorkScheduleApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkScheduleApiModelToJson(this);

  WorkSchedule toEntity() => WorkSchedule(
    id: identifier,
    date: date,
    shift: Shift(id: shiftIdentifier),
  );
}
