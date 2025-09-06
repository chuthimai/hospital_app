import 'package:hospital_app/features/view_prescription/domain/entities/prescription.dart';

import 'service_report.dart';

class PatientRecord {
  final int id;
  final String status;
  final DateTime createTime;
  final List<ServiceReport> serviceReports;
  final Prescription? prescription;

  PatientRecord({
    required this.id,
    required this.status,
    required this.createTime,
    this.serviceReports = const [],
    this.prescription
  });
}
