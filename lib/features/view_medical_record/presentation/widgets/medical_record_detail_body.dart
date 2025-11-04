import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/view_medical_record/presentation/widgets/android_pdf_view.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';
import 'package:hospital_app/share/utils/pdf_file_manager.dart';
import 'package:hospital_app/share/widgets/app_snack_bar.dart';
import 'package:hospital_app/share/widgets/pdf_viewer.dart';

import '../../domain/entities/enum/observation_status.dart';
import '../../domain/entities/patient_record.dart';

class MedicalRecordDetailBody extends StatefulWidget {
  final PatientRecord patientRecord;

  const MedicalRecordDetailBody(this.patientRecord, {super.key});

  @override
  State<MedicalRecordDetailBody> createState() =>
      _MedicalRecordDetailBodyState();
}

class _MedicalRecordDetailBodyState extends State<MedicalRecordDetailBody> {
  String? pathFilePdf;

  @override
  void initState() {
    super.initState();
    if (widget.patientRecord.pathFilePdf != null) {
      pathFilePdf = widget.patientRecord.pathFilePdf!;
      return;
    }
    if (widget.patientRecord.pathUrl != null) {
      _loadingFilePdfFromInternet();
    }
  }

  Future<void> _loadingFilePdfFromInternet() async {
    try {
      pathFilePdf = await PdfFileManager.downloadPdf(
          widget.patientRecord.pathUrl!, "test");
    } catch (e) {
      AppSnackBar.error(context, "Tải file PDF bị lỗi");
    }
  }

  @override
  Widget build(BuildContext context) {
    if (pathFilePdf != null) {
      if (Platform.isAndroid) {
        return SizedBox(
          width: double.infinity,
          child: AndroidPdfView(
            filePath: pathFilePdf!,
          ),
        );
      }
      return Center(
        child: PdfViewer(pathFilePdf!),
      );
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          ...widget.patientRecord.serviceReports.map((serviceReport) {
            if (serviceReport.status != ObservationStatus.final_ ||
                serviceReport.effectiveTime == null) {
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
                      "${DateFormatter.format(serviceReport.effectiveTime!)}"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                onTap: () => context.push(
                  '/medical-records/${widget.patientRecord.id}/service-reports/${serviceReport.id}',
                  extra: serviceReport,
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
