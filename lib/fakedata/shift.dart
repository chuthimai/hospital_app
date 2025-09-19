import 'package:flutter/material.dart';
import 'package:hospital_app/features/appointment/domain/entities/shift.dart';

/// Danh sách ca làm việc mẫu
List<Shift> fakeShifts = [
  Shift(
    id: 1,
    name: "Ca sáng",
    startTime: const TimeOfDay(hour: 8, minute: 0),
    endTime: const TimeOfDay(hour: 12, minute: 0),
  ),
  Shift(
    id: 2,
    name: "Ca chiều",
    startTime: const TimeOfDay(hour: 13, minute: 0),
    endTime: const TimeOfDay(hour: 17, minute: 0),
  ),
  Shift(
    id: 3,
    name: "Ca tối",
    startTime: const TimeOfDay(hour: 18, minute: 0),
    endTime: const TimeOfDay(hour: 22, minute: 0),
  ),
];