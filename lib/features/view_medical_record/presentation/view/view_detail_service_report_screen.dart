import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/diagnosis_report.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/condition_diagnosis_severity.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_method.dart';
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.sp),
                  child: Row(
                    children: [
                      const Expanded(
                          child: Text(
                        "Người thực hiện: ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                      Expanded(
                          child: Text(serviceReport.performer?.name ??
                              "Không có thông tin"))
                    ],
                  ),
                ),
                serviceReport is ImageReport
                    ? ImagesView((serviceReport as ImageReport).imageStudies)
                    : const SizedBox(),
                AssessmentResultsView(serviceReport.assessmentResults),
                Builder(builder: (context) {
                  if (serviceReport is ImageReport) {
                    final imageReport = serviceReport as ImageReport;
                    return Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                                child: Text(
                              "Đối tượng được quan sát: ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            Expanded(
                              child: Text(imageReport.focus),
                            )
                          ],
                        ),
                        const Text(
                          "Diễn giải kết quả",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(imageReport.interpretation),
                      ],
                    );
                  }

                  if (serviceReport is DiagnosisReport) {
                    final diagnosisReport = serviceReport as DiagnosisReport;
                    return Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: Text(
                                "Phương pháp sử dụng: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child:
                                  Text(diagnosisReport.method.toVietnamese()),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Expanded(
                                child: Text(
                              "Mức độ nghiêm trọng: ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            Expanded(
                              child:
                                  Text(diagnosisReport.severity.toVietnamese()),
                            )
                          ],
                        ),
                        const Text(
                          "Kết luận",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(diagnosisReport.conclusion),
                      ],
                    );
                  }
                  return const SizedBox();
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
