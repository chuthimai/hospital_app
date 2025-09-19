import 'package:hospital_app/features/view_medical_record/domain/entities/enum/record_status.dart';
import 'package:hospital_app/features/view_prescription/domain/entities/prescription.dart';

import 'service_report.dart';

class PatientRecord {
  final int id;
  final RecordStatus status;
  final DateTime createTime;
  final List<ServiceReport> serviceReports;
  final Prescription? prescription;

  PatientRecord({
    required this.id,
    this.status = RecordStatus.incomplete,
    required this.createTime,
    this.serviceReports = const [],
    this.prescription
  });
}
