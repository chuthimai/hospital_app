import 'package:flutter/material.dart';

class Shift {
  final int _id;
  final String? _name;
  final TimeOfDay? _startTime;
  final TimeOfDay? _endTime;

  Shift({
    required int id,
    String? name,
    TimeOfDay? startTime,
    TimeOfDay? endTime,
  })  : _id = id,
        _name = name,
        _startTime = startTime,
        _endTime = endTime;

  // ===== GETTERS =====
  int get id => _id;
  String? get name => _name;
  TimeOfDay? get startTime => _startTime;
  TimeOfDay? get endTime => _endTime;

  @override
  String toString() {
    return 'Shift{\n'
        'id: $_id,\n'
        'name: $_name,\n'
        'startTime: $_startTime,\n'
        'endTime: $_endTime\n'
        '}';
  }
}
