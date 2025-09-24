
import '../../domain/entities/appointment.dart';

abstract class AppointmentState {}

class AppointmentInitial extends AppointmentState {}
class AppointmentCreateSuccess extends AppointmentState {
  final Appointment appointment;

  AppointmentCreateSuccess(this.appointment);
}
class AppointmentCreateFailure extends AppointmentState {
  final String message;
  AppointmentCreateFailure(String message)
      : message = message.replaceFirst("Exception: ", "");
}