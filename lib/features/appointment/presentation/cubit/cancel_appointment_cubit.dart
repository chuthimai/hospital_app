import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/appointment.dart';
import '../../domain/repositories/appointment_repository.dart';
import 'cancel_appointment_state.dart';

class CancelAppointmentCubit extends Cubit<CancelAppointmentState> {
  final AppointmentRepository repo;

  CancelAppointmentCubit(this.repo) : super(CancelAppointmentInitial());

  Future<void> cancelAppointment(Appointment appointment) async {
    emit(CancelAppointmentInitial());
    try {
      await repo.cancelAppointment(appointment);

      emit(CancelAppointmentSuccess());
    } catch (e) {
      emit(CancelAppointmentFailure(
        e.toString(),
      ));
    }
  }
}
