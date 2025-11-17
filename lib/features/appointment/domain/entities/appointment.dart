import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';

import 'enum/appointment_status.dart';
import 'work_schedule.dart';

class Appointment implements Comparable<Appointment>{
  final int _id;
  final AppointmentStatus _status;
  final String? _reason;
  final DateTime? _cancellationDate;
  final WorkSchedule _workSchedule;
  final Physician? _physician;

  Appointment({
    required int id,
    AppointmentStatus status = AppointmentStatus.booked,
    String? reason,
    DateTime? cancellationDate,
    required WorkSchedule workSchedule,
    Physician? physician,
  })  : _id = id,
        _status = status,
        _reason = reason,
        _cancellationDate = cancellationDate,
        _workSchedule = workSchedule,
        _physician = physician;

  int get id => _id;
  AppointmentStatus get status => _status;
  String? get reason => _reason;
  DateTime? get cancellationDate => _cancellationDate;
  WorkSchedule get workSchedule => _workSchedule;
  Physician? get physician => _physician;

  @override
  String toString() {
    return 'Appointment{\n'
        'id: $_id,\n'
        'status: $_status,\n'
        'reason: $_reason,\n'
        'cancellationDate: $_cancellationDate,\n'
        'workSchedule: $_workSchedule,\n'
        'physician: $_physician\n'
        '}';
  }

  @override
  int compareTo(Appointment other) {
    // 1. Ưu tiên AppointmentStatus.booked
    if (status == AppointmentStatus.booked &&
        other.status != AppointmentStatus.booked) {
      return -1;
    }
    if (status != AppointmentStatus.booked &&
        other.status == AppointmentStatus.booked) {
      return 1;
    }

    // 2. So sánh ngày gần hơn trước (mới hơn đứng trước)
    final dateCompare = workSchedule.date.compareTo(other.workSchedule.date);
    if (dateCompare != 0) {
      return dateCompare * -1;
    }

    // 3. So sánh shift startTime sớm hơn trước
    final thisStart = workSchedule.shift?.startTime;
    final otherStart = other.workSchedule.shift?.startTime;

    if (thisStart == null && otherStart != null) return 1;
    if (thisStart != null && otherStart == null) return -1;
    if (thisStart == null && otherStart == null) return 0;

    final startCompare = (thisStart!.hour * 60 + thisStart.minute)
        .compareTo(otherStart!.hour * 60 + otherStart.minute);

    return startCompare;
  }

}
