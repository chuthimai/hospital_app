import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/image_report.dart';
import 'package:hospital_app/features/view_medical_record/presentation/widgets/assessment_results_view.dart';
import 'package:hospital_app/features/view_medical_record/presentation/widgets/images_view.dart';

import '../../domain/entities/service_report.dart';

class ViewDetailServiceReportScreen extends StatelessWidget {
  final ServiceReport serviceReport;

  const ViewDetailServiceReportScreen(this.serviceReport, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(serviceReport.service.name),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 16.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    serviceReport.service.name.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                serviceReport is ImageReport
                    ? ImagesView((serviceReport as ImageReport).imageStudies)
                    : const SizedBox(),
                AssessmentResultsView(serviceReport.assessmentResults),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
