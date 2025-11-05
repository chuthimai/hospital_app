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

class AppointmentGetSuccess extends AppointmentState {
  final List<Appointment> appointments;
  AppointmentGetSuccess(this.appointments);
}

class AppointmentGetFailure extends AppointmentState {
  final String message;

  AppointmentGetFailure(String message)
      : message = message.replaceFirst("Exception: ", "");
}

class AppointmentCancelSuccess extends AppointmentState {
  final List<Appointment> appointments;

  AppointmentCancelSuccess({required this.appointments});
}

class AppointmentCancelFailure extends AppointmentState {
  final String message;
  final List<Appointment> appointments;

  AppointmentCancelFailure(String message, {required this.appointments})
      : message = message.replaceFirst("Exception: ", "");
}
