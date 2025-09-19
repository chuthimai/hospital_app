import 'package:hospital_app/fakedata/physician.dart';
import 'package:hospital_app/fakedata/shift.dart';
import 'package:hospital_app/features/appointment/domain/entities/staff_work_schedule.dart';
import 'package:hospital_app/features/appointment/domain/entities/work_schedule.dart';


List<StaffWorkSchedule> staffWorkSchedules = [
  // --- Bác sĩ Nguyễn Văn A (Tim mạch) ---
  StaffWorkSchedule(
    id: 1,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 201,
      date: DateTime(2025, 9, 26),
      shift: fakeShifts[0],
    ),
    physician: fakePhysicians[0],
  ),
  StaffWorkSchedule(
    id: 2,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 202,
      date: DateTime(2025, 9, 28),
      shift: fakeShifts[1],
    ),
    physician: fakePhysicians[0],
  ),
  StaffWorkSchedule(
    id: 3,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 203,
      date: DateTime(2025, 9, 29),
      shift: fakeShifts[0],
    ),
    physician: fakePhysicians[0],
  ),
  StaffWorkSchedule(
    id: 4,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 204,
      date: DateTime(2025, 10, 1),
      shift: fakeShifts[1],
    ),
    physician: fakePhysicians[0],
  ),
  StaffWorkSchedule(
    id: 5,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 205,
      date: DateTime(2025, 10, 3),
      shift: fakeShifts[0],
    ),
    physician: fakePhysicians[0],
  ),
  StaffWorkSchedule(
    id: 6,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 206,
      date: DateTime(2025, 10, 4),
      shift: fakeShifts[1],
    ),
    physician: fakePhysicians[0],
  ),
  StaffWorkSchedule(
    id: 7,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 207,
      date: DateTime(2025, 10, 5),
      shift: fakeShifts[0],
    ),
    physician: fakePhysicians[0],
  ),
  StaffWorkSchedule(
    id: 8,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 208,
      date: DateTime(2025, 10, 16),
      shift: fakeShifts[1],
    ),
    physician: fakePhysicians[0],
  ),
  StaffWorkSchedule(
    id: 9,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 209,
      date: DateTime(2025, 10, 18),
      shift: fakeShifts[0],
    ),
    physician: fakePhysicians[0],
  ),
  StaffWorkSchedule(
    id: 10,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 210,
      date: DateTime(2025, 10, 20),
      shift: fakeShifts[1],
    ),
    physician: fakePhysicians[0],
  ),

  // --- Bác sĩ BS. Trần Thị B (Da liễu) ---
  StaffWorkSchedule(
    id: 11,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 211,
      date: DateTime(2025, 10, 16),
      shift: fakeShifts[1],
    ),
    physician: fakePhysicians[0],
  ),
  StaffWorkSchedule(
    id: 12,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 212,
      date: DateTime(2025, 10, 18),
      shift: fakeShifts[0],
    ),
    physician: fakePhysicians[0],
  ),
  StaffWorkSchedule(
    id: 13,
    duty: "Khám bệnh",
    workSchedule: WorkSchedule(
      id: 213,
      date: DateTime(2025, 10, 20),
      shift: fakeShifts[1],
    ),
    physician: fakePhysicians[0],
  ),
];
