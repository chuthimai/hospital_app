import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/home/presentation/widgets/service_item_view.dart';
import 'package:hospital_app/share/constants/service_items.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0.sp, 24.sp, 0.sp, 72.sp),
          child: Wrap(children: [
            ...serviceItems.map((e) {
              return ServiceItemView(
                serviceItem: e,
                width: double.infinity,
              );
            })
          ]),
        ),
      ),
    );
  }
}
