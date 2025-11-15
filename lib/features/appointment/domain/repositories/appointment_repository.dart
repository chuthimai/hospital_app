import 'package:hospital_app/features/auth/domain/entities/user.dart';

import '../entities/appointment.dart';
import '../entities/create_appointment_prams.dart';

abstract class AppointmentRepository {
  Future<Appointment> createAppointment(CreateAppointmentParams params);  // api
  Future<void> cancelAppointment(Appointment appointment);  // api + local
  Future<List<Appointment>> getAppointments(User user);   // api + local
  Future<void> deleteAllAppointments();  // local
  Future<void> saveAppointment(Appointment appointment);  // local
  Future<void> saveAppointments(List<Appointment> appointments);  // local
}