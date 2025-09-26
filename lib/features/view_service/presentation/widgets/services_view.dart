import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/fakedata/service.dart';

import 'service_card.dart';

class ServicesView extends StatelessWidget {
  ServicesView({super.key});

  final services = fakeServices.where((e) => e.isCompleted == false).toList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
        child: ListView.builder(
          itemCount: services.length,
          itemBuilder: (context, index) {
            final service = services[index];
            return ServiceCard(
              service,
              key: Key(service.id.toString()),
            );
          },
        ),
      ),
    );
  }
}
