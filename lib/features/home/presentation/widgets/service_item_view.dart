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
      width: 100.w,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12.sp, horizontal: 4.sp),
        child: Column(
          children: [
            Material(
              color: Colors.white.withOpacity(0),
              shape: const CircleBorder(),
              child: InkWell(
                onTap: () => {
                  serviceItem.onTap(context)
                },
                splashColor: Theme.of(context).hoverColor.withOpacity(0.3),
                customBorder: const CircleBorder(),
                child: Padding(
                  padding: EdgeInsets.all(12.sp),
                  child: Icon(
                    serviceItem.iconData,
                    size: 36.sp,
                    color:
                    isDarkMode ? Theme.of(context).cardColor : Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.sp),
            Text(
              serviceItem.label,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
