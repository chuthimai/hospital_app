import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/home/presentation/widgets/app_bar_home.dart';

class HeadHome extends StatelessWidget {
  const HeadHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.3), // màu bóng
          spreadRadius: 2,
          blurRadius: 10,
          offset: const Offset(0, 1),
        )
      ]),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.sp, 8.sp, 16.sp, 0.sp),
        child: Column(
          children: [
            const AppBarHome(),
            SizedBox(height: 16.sp),
          ],
        ),
      ),
    );
  }
}
