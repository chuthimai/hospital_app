
import '../../domain/entities/shift.dart';

abstract class ShiftState {}

class ShiftInitial extends ShiftState {}
class ShiftDone extends ShiftState {
  final List<Shift> shifts;

  ShiftDone(this.shifts);
}