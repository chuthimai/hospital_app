import 'service_report.dart';

class DiagnosisReport extends ServiceReport {
  final String type;
  final String severity;
  final String conclusion;
  final DateTime recordedTime;

  DiagnosisReport({
    required super.id,
    required super.category,
    required super.method,
    required super.status,
    required super.service,
    required super.requester,
    super.assessmentResults,
    super.effectiveTime,
    super.performer,
    required this.type,
    required this.severity,
    required this.conclusion,
    required this.recordedTime,
  });
}
