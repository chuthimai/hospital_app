import 'package:hospital_app/share/db/isar_service.dart';
import 'package:isar/isar.dart';
import '../models/work_schedule_db_model.dart';

abstract class WorkScheduleLocalDataSource {
  Future<void> saveWorkSchedule(WorkScheduleDbModel workSchedule);
  Future<void> deleteAllWorkSchedules();
}

class WorkScheduleLocalDataSourceImpl implements WorkScheduleLocalDataSource {
  Future<Isar> get _isar async => await IsarService.instance;

  @override
  Future<void> saveWorkSchedule(WorkScheduleDbModel workSchedule) async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.workScheduleDbModels.put(workSchedule);
    });
  }

  @override
  Future<void> deleteAllWorkSchedules() async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.workScheduleDbModels.clear();
    });
  }
}
