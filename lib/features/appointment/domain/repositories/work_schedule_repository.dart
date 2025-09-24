import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';

import '../entities/work_schedule.dart';

abstract class WorkScheduleRepository {
  Future<void> saveWorkSchedule(WorkSchedule workSchedule);  // local
  Future<void> deleteAllWorkSchedules();  // local
  Future<List<WorkSchedule>> getStaffWordSchedule(Physician doctor);  // api
}