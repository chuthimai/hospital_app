import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/appointment/presentation/widgets/booking_appointment_view.dart';

class BookingAppointmentScreen extends StatelessWidget {
  const BookingAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đặt lịch khám'),
        actions: [
          IconButton(
            onPressed: () => context.push("/appointments-history"),
            icon: const Icon(Icons.list),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.sp, 8.sp, 16.sp, 16.sp),
          child: const BookingAppointmentView(),
        ),
      ),
    );
  }
}
