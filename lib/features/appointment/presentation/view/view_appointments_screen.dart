import 'package:flutter/material.dart';
import 'package:hospital_app/features/appointment/presentation/widgets/appointments_view.dart';

class ViewAppointmentsScreen extends StatelessWidget {
  const ViewAppointmentsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lịch khám đã đặt'),
      ),
      body: const SafeArea(child: AppointmentsView()),
    );
  }
}