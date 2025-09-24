import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/shift.dart';

part 'shift_api_model.g.dart';

@JsonSerializable()
class ShiftApiModel {
  final int identifier;
  final String name;
  final String startTime; // "HH:mm:ss"
  final String endTime;   // "HH:mm:ss"

  ShiftApiModel({
    required this.identifier,
    required this.name,
    required this.startTime,
    required this.endTime,
  });

  factory ShiftApiModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ShiftApiModelToJson(this);

  /// convert "HH:mm:ss" -> TimeOfDay
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
    id: identifier,
    name: name,
    startTime: _parseTime(startTime),
    endTime: _parseTime(endTime),
  );
}
