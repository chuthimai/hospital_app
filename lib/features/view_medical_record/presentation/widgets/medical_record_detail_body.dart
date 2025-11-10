import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/view_medical_record/presentation/cubit/patient_record_cubit.dart';
import 'package:hospital_app/features/view_medical_record/presentation/widgets/android_pdf_view.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';
import 'package:hospital_app/share/widgets/pdf_viewer.dart';

import '../../domain/entities/enum/observation_status.dart';
import '../../domain/entities/patient_record.dart';
import '../cubit/patient_record_state.dart';

class MedicalRecordDetailBody extends StatefulWidget {
  final PatientRecord patientRecord;

  const MedicalRecordDetailBody(this.patientRecord, {super.key});

  @override
  State<MedicalRecordDetailBody> createState() =>
      _MedicalRecordDetailBodyState();
}

class _MedicalRecordDetailBodyState extends State<MedicalRecordDetailBody> {
  @override
  void initState() {
    super.initState();
    context
        .read<PatientRecordCubit>()
        .getDetailPatientRecord(widget.patientRecord);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PatientRecordCubit, PatientRecordState>(
        builder: (context, state) {
      if (state is PatientRecordInitial) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (state is PatientRecordGetDetailFailure) {
        return Center(
          child: Text(state.message),
        );
      }

      final patientRecord =
          (state as PatientRecordGetDetailSuccess).patientRecord;

      if (patientRecord.pathFilePdf != null) {
        if (Platform.isAndroid) {
          return SizedBox(
            width: double.infinity,
            child: AndroidPdfView(
              filePath: patientRecord.pathFilePdf!,
            ),
          );
        }
        return Center(
          child: PdfViewer(patientRecord.pathFilePdf!),
        );
      }

      return SingleChildScrollView(
        child: Column(
          children: [
            ...patientRecord.serviceReports.map((serviceReport) {
              if (serviceReport.status != ObservationStatus.final_) {
                return const SizedBox();
              }
              return Card(
                key: ValueKey(serviceReport.id),
                margin: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
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
                    subtitle: Text("Thời gian thực hiện: "
                        "${serviceReport.effectiveTime != null ? DateFormatter.format(serviceReport.effectiveTime!) : "Không có thông tin"}"),
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
      );
    });
  }
}
