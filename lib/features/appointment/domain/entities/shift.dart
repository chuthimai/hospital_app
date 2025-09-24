import 'package:flutter/material.dart';

class Shift {
  final int id;
  final String? name;
  final TimeOfDay? startTime;
  final TimeOfDay? endTime;

  Shift({
    required this.id,
    this.name,
    this.startTime,
    this.endTime,
  });

  @override
  String toString() {
    return 'Shift{\nid: $id, \nname: $name, \nstartTime: $startTime, \nendTime: $endTime}';
  }
}
