import 'package:hospital_app/features/appointment/data/datasources/work_schedule_local_data_source.dart';
import 'package:hospital_app/features/appointment/data/datasources/work_schedule_remote_data_source.dart';
import 'package:hospital_app/features/appointment/data/models/work_schedule_db_model.dart';
import 'package:hospital_app/features/appointment/data/repositories/shift_repository_impl.dart';
import 'package:hospital_app/features/appointment/domain/entities/work_schedule.dart';
import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/repositories/shift_repository.dart';
import '../../domain/repositories/work_schedule_repository.dart';
import '../datasources/shift_local_data_source.dart';
import '../datasources/shift_remote_data_source.dart';

class WorkScheduleRepositoryImpl implements WorkScheduleRepository {
  final WorkScheduleLocalDataSource _localDataSource;
  final WorkScheduleRemoteDataSource _remoteDataSource;
  final ShiftRepository _shiftRepo = ShiftRepositoryImpl(
      localDataSource: ShiftLocalDataSourceImpl(),
      remoteDataSource: ShiftRemoteDataSourceImpl());

  WorkScheduleRepositoryImpl({
    required localDataSource,
    required remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<void> deleteAllWorkSchedules() async {
    try {
      await _localDataSource.deleteAllWorkSchedules();
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<void> saveWorkSchedule(WorkSchedule workSchedule) async {
    try {
      await _localDataSource
          .saveWorkSchedule(WorkScheduleDbModel.fromEntity(workSchedule));
    } catch (e) {
      AppLogger().error("Local error: $e");
    }
  }

  @override
  Future<List<WorkSchedule>> getStaffWordSchedule(Physician doctor) async {
    try {
      final workSchedulesApi =
          await _remoteDataSource.getStaffWordSchedule(doctor.id);

      final workSchedules = await Future.wait(workSchedulesApi.map((e) async {
        final workSchedule = e.toEntity();
        final shift = await _shiftRepo.getShift(e.shiftIdentifier);
        if (shift != null) workSchedule.setShift(shift);
        return workSchedule;
      }).toList());

      return workSchedules;
    } catch (e) {
      AppLogger().error("Remote error: $e");
    }
    return [];
  }
}
