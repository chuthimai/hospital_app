import '../entities/shift.dart';

abstract class ShiftRepository {
  Future<void> saveShift(Shift shift);  // local
  Future<void> deleteAllShifts();  // local
  Future<List<Shift>> getAllShifts();  // remote + local
  Future<Shift?> getShift(int shiftId); // local
}