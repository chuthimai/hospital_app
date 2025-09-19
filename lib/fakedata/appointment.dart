import 'package:hospital_app/fakedata/physician.dart';
import 'package:hospital_app/fakedata/shift.dart';
import 'package:hospital_app/features/appointment/domain/entities/appointment.dart';
import 'package:hospital_app/features/appointment/domain/entities/enum/appointment_status.dart';
import 'package:hospital_app/features/appointment/domain/entities/work_schedule.dart';

/// Fake data
List<Appointment> fakeAppointments = [
  Appointment(
    id: 1,
    status: AppointmentStatus.booked,
    workSchedule: WorkSchedule(
      id: 101,
      date: DateTime.now().add(const Duration(days: 1)),
      shift: fakeShifts[0],
    ),
    physician: fakePhysicians[0],
  ),
  Appointment(
    id: 2,
    status: AppointmentStatus.cancelled,
    reason: "Bệnh nhân bận công việc",
    cancellationDate: DateTime.now(),
    workSchedule: WorkSchedule(
      id: 102,
      date: DateTime.now().add(const Duration(days: 2)),
      shift: fakeShifts[1],
    ),
    physician: fakePhysicians[1],
  ),
  Appointment(
    id: 3,
    status: AppointmentStatus.checkedIn,
    workSchedule: WorkSchedule(
      id: 103,
      date: DateTime.now(),
      shift: fakeShifts[2],
    ),
    physician: fakePhysicians[2],
  ),
];
