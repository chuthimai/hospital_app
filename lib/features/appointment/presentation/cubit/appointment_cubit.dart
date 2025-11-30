import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/domain/entities/user.dart';
import '../../domain/entities/appointment.dart';
import '../../domain/entities/create_appointment_prams.dart';
import '../../domain/repositories/appointment_repository.dart';
import 'appointment_state.dart';

class AppointmentCubit extends Cubit<AppointmentState> {
  final AppointmentRepository repo;

  AppointmentCubit(this.repo) : super(AppointmentInitial());

  Future<void> createAppointment(CreateAppointmentParams params) async {
    emit(AppointmentInitial());
    try {
      final appointment = await repo.createAppointment(params);
      emit(AppointmentCreateSuccess(appointment));
    } catch (e) {
      emit(AppointmentCreateFailure(e.toString()));
    }
  }

  Future<void> getAllAppointments(User user) async {
    emit(AppointmentInitial());
    try {
      final appointments = await repo.getAppointments(user);
      appointments.sort();
      emit(AppointmentGetSuccess(appointments));
    } catch (e) {
      emit(AppointmentGetFailure(e.toString()));
    }
  }
}
