import 'service_report.dart';

class LaboratoryReport extends ServiceReport {
  final String interpretation;

  LaboratoryReport({
    required super.id,
    required super.category,
    required super.method,
    required super.status,
    required super.service,
    super.performer,
    super.assessmentResults,
    super.effectiveTime,
    super.recordedTime,
    required this.interpretation,
  });
}
