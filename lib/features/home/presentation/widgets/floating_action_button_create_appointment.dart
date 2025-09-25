import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FloatingActionButtonCreateAppointment extends StatelessWidget {
  const FloatingActionButtonCreateAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(4.sp, 0, 32.sp, 24.sp),
      child: FloatingActionButton(
        onPressed: () {
          context.push("/book-appointment");
        },
        backgroundColor: Theme.of(context).primaryColor,
        tooltip: "Tạo lịch hẹn",
        child: Icon(
          Icons.add,
          size: 32.sp,
        ),
      ),
    );
  }

}