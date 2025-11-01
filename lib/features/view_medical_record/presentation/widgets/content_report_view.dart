import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/assessment_item.dart';
import '../../domain/entities/assessment_result.dart';

class ContentReportView extends StatelessWidget {
  final AssessmentResult result;

  const ContentReportView(this.result, {super.key});

  @override
  Widget build(BuildContext context) {
    return renderContent(result.assessmentItem, result.value, context, 0);
  }

  Widget renderContent(
      AssessmentItem assessmentItem, String value, BuildContext context, int level) {
    final hasChildren = assessmentItem.children != null && assessmentItem.children!.isNotEmpty;

    if (!hasChildren) {
      // Không có children → chỉ hiển thị tên và giá trị
      return Padding(
        padding: EdgeInsets.only(left: (level * 12).sp, bottom: 4.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              assessmentItem.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 2.sp),
            Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      );
    }

    // Có children → hiển thị nhóm + đệ quy qua children
    return Padding(
      padding: EdgeInsets.only(left: (level * 12).sp, bottom: 8.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            assessmentItem.name,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: assessmentItem.children!
                .map((child) =>
                renderContent(child, result.value, context, level + 1))
                .toList(),
          ),
        ],
      ),
    );
  }
}
