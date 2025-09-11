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
          padding: EdgeInsets.fromLTRB(16.sp, 24.sp, 16.sp, 72.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Khám bệnh",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 8.sp),
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 8.sp,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 2.5, // chỉnh tỉ lệ rộng/cao
                children: serviceExaminationItems.map((e) {
                  return ServiceItemView(
                    serviceItem: e,
                    width: double.infinity,
                  );
                }).toList(),
              ),
              SizedBox(height: 8.sp),

              Text(
                "Hồ sơ",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 8.sp),
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 8.sp,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 2.5, // chỉnh tỉ lệ rộng/cao
                children: medicalDocumentsItems.map((e) {
                  return ServiceItemView(
                    serviceItem: e,
                    width: double.infinity,
                  );
                }).toList(),
              ),
              SizedBox(height: 8.sp),

              Text(
                "Thanh toán",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 8.sp),
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 8.sp,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 2.5, // chỉnh tỉ lệ rộng/cao
                children: paymentItems.map((e) {
                  return ServiceItemView(
                    serviceItem: e,
                    width: double.infinity,
                  );
                }).toList(),
              ),
              SizedBox(height: 8.sp),

              Text(
                "Thông tin",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 8.sp),
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 8.sp,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 2.5, // chỉnh tỉ lệ rộng/cao
                children: infoItems.map((e) {
                  return ServiceItemView(
                    serviceItem: e,
                    width: double.infinity,
                  );
                }).toList(),
              ),
              SizedBox(height: 8.sp),
            ],
          ),
        ),
      ),
    );
  }
}
