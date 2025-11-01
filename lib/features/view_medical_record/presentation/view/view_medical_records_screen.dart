import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/patient_record.dart';

import '../../../../fakedata/medical_record.dart';
import '../../../../share/utils/date_formatter.dart';

class ViewMedicalRecordsScreen extends StatelessWidget {
  final List<PatientRecord> patientRecords = fakePatientRecords;

  ViewMedicalRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hồ sơ sức khoẻ'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: patientRecords.length,
          itemBuilder: (context, index) {
            final patientRecord = patientRecords[index];
            return Card(
              key: ValueKey(patientRecord.id),
              margin: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.sp),
              ),
              child: InkWell(
                child: ListTile(
                  title: Text(
                    "Hồ sơ #${patientRecord.id}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                      "Ngày đến khám: ${DateFormatter.format(patientRecord.createTime)}"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                onTap: () => context.push(
                  '/medical-records/${patientRecord.id}',
                  extra: patientRecord,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
