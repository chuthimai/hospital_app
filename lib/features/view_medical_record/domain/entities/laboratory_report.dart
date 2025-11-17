import 'service_report.dart';

class LaboratoryReport extends ServiceReport {
  final String _interpretation;

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
    required String interpretation,
  }) : _interpretation = interpretation;

  String get interpretation => _interpretation;
}