import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/assessment_result.dart';
import 'assessment_results_view.dart';

class ContentReportView extends StatelessWidget {
  final AssessmentResult result;

  const ContentReportView(this.result, {super.key});

  @override
  Widget build(BuildContext context) {
    return renderContent(result, context, 0);
  }

  Widget renderContent(
      AssessmentResult assessmentResult, BuildContext context, int level) {
    final hasChildren = assessmentResult.assessmentResults.isNotEmpty;

    if (!hasChildren) {
      // Không có children → chỉ hiển thị tên và giá trị
      return Padding(
        padding: EdgeInsets.only(left: (level * 12).sp, bottom: 4.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              assessmentResult.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 2.sp),
            Text(
              assessmentResult.value ?? "Không có thông tin",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      );
    }

    // Có children → hiển thị nhóm + đệ quy qua children
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          assessmentResult.name,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4.sp),
        Padding(
          padding: EdgeInsets.only(left: 12.sp, bottom: 8.sp),
          child: AssessmentResultsView(assessmentResult.assessmentResults),
        ),
      ],
    );
  }
}
