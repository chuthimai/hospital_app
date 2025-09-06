import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';

import 'work_schedule.dart';

class StaffWorkSchedule {
  final int id;
  final String duty;
  final WorkSchedule workSchedule;
  final Physician physician;

  StaffWorkSchedule({
    required this.id,
    required this.duty,
    required this.workSchedule,
    required this.physician,
  });
}
