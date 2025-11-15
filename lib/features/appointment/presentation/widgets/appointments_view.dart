import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/presentation/cubit/auth_cubit.dart';
import '../../../auth/presentation/cubit/auth_state.dart';
import '../../domain/entities/appointment.dart';
import '../cubit/appointment_cubit.dart';
import '../cubit/appointment_state.dart';
import 'appointment_card.dart';

class AppointmentsView extends StatefulWidget {
  const AppointmentsView({super.key});

  @override
  State<AppointmentsView> createState() => _AppointmentsViewState();
}

class _AppointmentsViewState extends State<AppointmentsView> {
  List<Appointment>? appointments;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await context.read<AuthCubit>().getCurrentUser();
    final authState = context.read<AuthCubit>().state;
    if (authState is AuthSuccess) {
      await context.read<AppointmentCubit>().getAllAppointments(authState.user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentCubit, AppointmentState>(
        builder: (context, appointmentState) {
      if (appointmentState is AppointmentInitial) {
        return const Center(child: CircularProgressIndicator());
      }
      if (appointmentState is AppointmentGetFailure) {
        return Center(
          child: Text(appointmentState.message),
        );
      }
      if (appointmentState is AppointmentGetSuccess) {
        if (appointmentState.appointments.isEmpty) {
          return const Center(child: Text("Không có lịch hẹn"));
        }
        return ListView.builder(
          itemCount: appointmentState.appointments.length,
          itemBuilder: (context, index) {
            final appointment = appointmentState.appointments[index];
            return AppointmentCard(appointment: appointment);
          },
        );
      }

      return const Center(child: Text("Không có lịch hẹn"));
    });
  }
}
