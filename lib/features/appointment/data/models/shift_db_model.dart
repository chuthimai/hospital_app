import 'package:isar/isar.dart';
import 'package:flutter/material.dart';
import '../../domain/entities/shift.dart';

part 'shift_db_model.g.dart';

@collection
class ShiftDbModel {
  Id id = 0;
  String name;
  String startTime; // lưu "HH:mm:ss"
  String endTime;   // lưu "HH:mm:ss"

  ShiftDbModel({
    required this.id,
    required this.name,
    required this.startTime,
    required this.endTime,
  });

  /// parse "HH:mm:ss" -> TimeOfDay
  TimeOfDay _parseTime(String time) {
    final parts = time.split(":");
    return TimeOfDay(
      hour: int.parse(parts[0]),
      minute: int.parse(parts[1]),
    );
  }

  /// convert TimeOfDay -> "HH:mm:ss"
  String _formatTime(TimeOfDay tod) =>
      "${tod.hour.toString().padLeft(2, '0')}:"
          "${tod.minute.toString().padLeft(2, '0')}:00";

  Shift toEntity() => Shift(
    id: id,
    name: name,
    startTime: _parseTime(startTime),
    endTime: _parseTime(endTime),
  );

  factory ShiftDbModel.fromEntity(Shift shift) => ShiftDbModel(
    id: shift.id,
    name: shift.name!,
    startTime: "${shift.startTime!.hour.toString().padLeft(2, '0')}:"
        "${shift.startTime!.minute.toString().padLeft(2, '0')}:00",
    endTime: "${shift.endTime!.hour.toString().padLeft(2, '0')}:"
        "${shift.endTime!.minute.toString().padLeft(2, '0')}:00",
  );
}
