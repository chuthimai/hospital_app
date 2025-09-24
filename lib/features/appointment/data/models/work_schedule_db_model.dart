import 'package:isar/isar.dart';
import '../../domain/entities/work_schedule.dart';
import 'shift_db_model.dart';

part 'work_schedule_db_model.g.dart';

@collection
class WorkScheduleDbModel {
  Id id = 0;

  late DateTime date;

  final shift = IsarLink<ShiftDbModel>();

  WorkScheduleDbModel({
    required this.id,
    required this.date,
  });

  Future<WorkSchedule> toEntity() async {
    await shift.load();
    return WorkSchedule(
      id: id,
      date: date,
      shift: shift.value?.toEntity(),
    );
  }

  factory WorkScheduleDbModel.fromEntity(WorkSchedule entity) {
    final db = WorkScheduleDbModel(
      id: entity.id,
      date: entity.date,
    );
    if (entity.shift != null) {
      db.shift.value = ShiftDbModel.fromEntity(entity.shift!);
    }
    return db;
  }
}
