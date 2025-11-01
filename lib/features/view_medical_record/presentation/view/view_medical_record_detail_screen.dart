import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_status.dart';

import '../../../../share/utils/date_formatter.dart';
import '../../domain/entities/patient_record.dart';

class ViewMedicalRecordDetailScreen extends StatelessWidget {
  final PatientRecord patientRecord;

  const ViewMedicalRecordDetailScreen(this.patientRecord, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hồ sơ #${patientRecord.id}'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...patientRecord.serviceReports.map((serviceReport) {
                if (
                serviceReport.status != ObservationStatus.final_
                    || serviceReport.effectiveTime == null
                ) {
                  return const SizedBox();
                }
                    return Card(
                      key: ValueKey(serviceReport.id),
                      margin:
                          EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.sp),
                      ),
                      child: InkWell(
                        child: ListTile(
                          title: Text(
                            serviceReport.service.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                              "Thời gian thực hiện: "
                                  "${DateFormatter.format(serviceReport.effectiveTime!)}"
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                        onTap: () => context.push(
                          '/medical-records/${patientRecord.id}/service-reports/${serviceReport.id}',
                          extra: serviceReport,
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
