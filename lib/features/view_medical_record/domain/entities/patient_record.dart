import 'package:hospital_app/features/view_medical_record/domain/entities/enum/record_status.dart';
import 'package:hospital_app/features/view_prescription/domain/entities/prescription.dart';

import 'service_report.dart';

class PatientRecord {
  final int id;
  final RecordStatus status;
  final DateTime createdTime;
  final List<ServiceReport> serviceReports;
  final Prescription? prescription;
  final String? pathUrl;
  String? pathFilePdf;

  PatientRecord({
    required this.id,
    this.status = RecordStatus.incomplete,
    required this.createdTime,
    this.serviceReports = const [],
    this.prescription,
    this.pathUrl,
    this.pathFilePdf,
  });
}
