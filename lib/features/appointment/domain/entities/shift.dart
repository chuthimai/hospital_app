import 'package:flutter/material.dart';

class Shift {
  final int id;
  final String name;
  final TimeOfDay startTime;
  final TimeOfDay endTime;

  Shift({
    required this.id,
    required this.name,
    required this.startTime,
    required this.endTime,
  });
}
