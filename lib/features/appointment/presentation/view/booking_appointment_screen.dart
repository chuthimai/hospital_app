import 'package:flutter/material.dart';

class BookingAppointmentScreen extends StatelessWidget {
  const BookingAppointmentScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BookingAppointmentScreen'),
        ),
      ),
    );
  }
}