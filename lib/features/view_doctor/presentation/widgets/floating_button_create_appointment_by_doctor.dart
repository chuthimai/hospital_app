import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/physician.dart';

class FloatingButtonCreateAppointmentByDoctor extends StatelessWidget {
  final Physician? doctor;

  const FloatingButtonCreateAppointmentByDoctor({
    super.key,
    this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.pushReplacement(
          "/book-appointment",
          extra: doctor,
        );
      },
      backgroundColor: Theme.of(context).primaryColor,
      tooltip: "Tạo lịch hẹn",
      child: Icon(
        Icons.add,
        size: 32.sp,
      ),
    );
  }
}
