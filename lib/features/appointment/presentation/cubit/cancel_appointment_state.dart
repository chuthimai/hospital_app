abstract class CancelAppointmentState {}

class CancelAppointmentInitial extends CancelAppointmentState {}

class CancelAppointmentSuccess extends CancelAppointmentState {}

class CancelAppointmentFailure extends CancelAppointmentState {
  final String message;

  CancelAppointmentFailure(String message)
      : message = message.replaceFirst("Exception: ", "");
}
