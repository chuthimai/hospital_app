import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/share/constants/service_items.dart';

class ServiceItemView extends StatelessWidget {
  final ServiceItem serviceItem;
  final double width;
  final double height;

  const ServiceItemView({
    super.key,
    required this.serviceItem,
    this.width = 140,
    this.height = 120,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      width: width.w,
      height: height.h,
      child: InkWell(
        onTap: () => serviceItem.onTap(context),
        borderRadius: BorderRadius.circular(12.r),
        splashColor: Theme.of(context).hoverColor.withOpacity(0.2),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 12.sp),
          decoration: BoxDecoration(
            color: isDarkMode
                ? Colors.white.withOpacity(0.2)
                : Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 1,
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(
                serviceItem.iconData,
                size: 36.sp,
                color:
                    isDarkMode ? Theme.of(context).cardColor : Theme.of(context).primaryColor,
              ),
              SizedBox(width: 8.sp),
              Expanded(
                child: Text(
                  serviceItem.label,
                  style: Theme.of(context).textTheme.bodyMedium,
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
