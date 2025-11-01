import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/view_medical_record/presentation/widgets/content_report_view.dart';
import 'package:hospital_app/features/view_medical_record/presentation/widgets/table_report_view.dart';
import '../../domain/entities/assessment_result.dart';
import '../../domain/entities/measurement_indicator.dart';

class AssessmentResultsView extends StatelessWidget {
  final List<AssessmentResult> results;

  const AssessmentResultsView(this.results, {super.key});


  @override
  Widget build(BuildContext context) {
    if (results.isEmpty) {
      return Builder(
        builder: (context) {
          return Center(
              child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: const Text("Không có kết quả đánh giá"),
              ),
          );
        }
      );
    }

    List<AssessmentResult> resultTable = [];
    List<AssessmentResult> assessmentResults = [];
    for (AssessmentResult result in results) {
      if (result.assessmentItem is MeasurementIndicator) {
        resultTable.add(result);
        continue;
      }
      assessmentResults.add(result);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        resultTable.isNotEmpty ? TableReportView(resultTable) : const SizedBox(),
        ...assessmentResults.map((e) => ContentReportView(e)),
      ],
    );
  }

}