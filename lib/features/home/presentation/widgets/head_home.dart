import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/home/presentation/widgets/app_bar_home.dart';

class HeadHome extends StatelessWidget {
  const HeadHome({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: height/4,
      child: Stack(
        children: [
          Positioned(
            right: -10.sp,
            bottom: -150.sp,
            child: Stack(
              alignment: Alignment.center,
              children: List.generate(6, (index) {
                double size = 120 + index * 30;
                return Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3 / (index + 1)), // mờ dần
                      width: 2,
                    ),
                  ),
                );
              }),
            ),
          ),

          Positioned(
            left: -100.sp,
            bottom: 100.sp,
            child: Stack(
              alignment: Alignment.center,
              children: List.generate(6, (index) {
                double size = 120 + index * 30;
                return Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3 / (index + 1)), // mờ dần
                      width: 2,
                    ),
                  ),
                );
              }),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(24.sp, 16.sp, 24.sp, 8.sp),
            child: Column(
              children: [
                const AppBarHome(),
                SizedBox(height: 16.sp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
