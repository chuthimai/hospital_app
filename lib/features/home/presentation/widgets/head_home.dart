import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/home/presentation/widgets/app_bar_home.dart';

class HeadHome extends StatelessWidget {
  const HeadHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
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
