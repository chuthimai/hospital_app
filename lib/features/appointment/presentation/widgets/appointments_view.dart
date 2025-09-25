import 'package:flutter/material.dart';
import 'package:hospital_app/fakedata/appointment.dart';
import 'package:hospital_app/features/appointment/presentation/widgets/appointment_card.dart';

class AppointmentsView extends StatelessWidget {
  const AppointmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fakeAppointments.length,
      itemBuilder: (context, index) {
        final appointment = fakeAppointments[index];
        return AppointmentCard(appointment: appointment);
      },
    );
  }
}
