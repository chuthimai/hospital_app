import 'package:hospital_app/share/db/isar_service.dart';
import 'package:isar/isar.dart';
import '../models/shift_db_model.dart';

abstract class ShiftLocalDataSource {
  Future<void> saveShift(ShiftDbModel shift);
  Future<void> saveShifts(List<ShiftDbModel> shifts);
  Future<void> deleteAllShifts();
  Future<ShiftDbModel?> getShift(int shiftId);
  Future<List<ShiftDbModel>> getAllShifts();
}

class ShiftLocalDataSourceImpl implements ShiftLocalDataSource {
  Future<Isar> get _isar async => await IsarService.instance;

  @override
  Future<void> saveShift(ShiftDbModel shift) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.shiftDbModels.put(shift);
    });
  }

  @override
  Future<void> deleteAllShifts() async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.shiftDbModels.clear();
    });
  }

  @override
  Future<ShiftDbModel?> getShift(int shiftId) async {
    final isar = await _isar;
    return await isar.shiftDbModels.get(shiftId);
  }

  @override
  Future<void> saveShifts(List<ShiftDbModel> shifts) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      for (final shift in shifts) {
        await isar.shiftDbModels.put(shift);
      }
    });
  }

  @override
  Future<List<ShiftDbModel>> getAllShifts() async {
    final isar = await _isar;
    return await isar.shiftDbModels.where().findAll();
  }
}
