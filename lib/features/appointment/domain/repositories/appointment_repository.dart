import 'package:hospital_app/features/appointment/domain/entities/staff_work_schedule.dart';
import 'package:hospital_app/features/appointment/presentation/widgets/schedule_by_doctor_form.dart';

import '../entities/appointment.dart';
import '../entities/create_appointment_prams.dart';

abstract class AppointmentRepository {
  Future<Appointment> createAppointment(CreateAppointmentPrams prams);  // api
  Future<void> cancelAppointment(Appointment appointment);  // api + local
  Future<List<StaffWorkSchedule>> getStaffWordSchedule(Doctor doctor);  // api
  Future<List<Appointment>> getAppointments();   // api + local
  Future<void> deleteAllAppointments();  // local
  Future<void> saveAppointment(Appointment appointment);  // local
  Future<void> saveAppointments(List<Appointment> appointments);  // local
}