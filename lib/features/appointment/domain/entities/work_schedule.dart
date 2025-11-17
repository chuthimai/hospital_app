import 'shift.dart';

class WorkSchedule {
  final int _id;
  final DateTime _date;
  Shift? _shift;

  WorkSchedule({
    required int id,
    required DateTime date,
    Shift? shift,
  })  : _id = id,
        _date = date,
        _shift = shift;

  int get id => _id;
  DateTime get date => _date;
  Shift? get shift => _shift;

  void setShift(Shift newShift) {
    _shift = newShift;
  }

  @override
  String toString() {
    return 'WorkSchedule{\n'
        'id: $_id,\n'
        'date: $_date,\n'
        'shift: $_shift\n'
        '}';
  }
}
