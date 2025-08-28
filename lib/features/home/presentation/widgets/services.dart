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
          padding: EdgeInsets.fromLTRB(16.sp, 8.sp, 16.sp, 16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Khám bệnh",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...serviceExaminationItems
                        .map((e) => ServiceItemView(serviceItem: e))
                  ],
                ),
              ),
              SizedBox(height: 4.sp),

              Text(
                "Hồ sơ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...medicalDocumentsItems
                        .map((e) => ServiceItemView(serviceItem: e))
                  ],
                ),
              ),
              SizedBox(height: 4.sp),

              Text(
                "Thanh toán",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...paymentItems.map((e) => ServiceItemView(serviceItem: e))
                  ],
                ),
              ),
              SizedBox(height: 4.sp),

              Text(
                "Thông tin",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...infoItems.map((e) => ServiceItemView(serviceItem: e))
                  ],
                ),
              ),
              SizedBox(height: 4.sp),
            ],
          ),
        ),
      ),
    );
  }
}
