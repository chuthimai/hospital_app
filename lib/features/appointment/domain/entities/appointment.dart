import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';

import 'appointment_status.dart';
import 'work_schedule.dart';

class Appointment {
  final int id;
  final AppointmentStatus status;
  final String? reason;
  final DateTime? cancellationDate;
  final WorkSchedule workSchedule;
  final Physician? physician;

  Appointment({
    required this.id,
    this.status = AppointmentStatus.booked,
    this.reason,
    this.cancellationDate,
    required this.workSchedule,
    this.physician,
  });
}
