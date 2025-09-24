import 'shift.dart';

class WorkSchedule {
  final int id;
  final DateTime date;
  Shift shift;

  WorkSchedule({
    required this.id,
    required this.date,
    required this.shift,
  });

  void setShift(Shift newShift) {
    shift = newShift;
  }

  @override
  String toString() {
    return 'WorkSchedule{\nid: $id, \ndate: $date, \nshift: $shift}';
  }
}
