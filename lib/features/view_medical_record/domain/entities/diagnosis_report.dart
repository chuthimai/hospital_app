
import 'enum/condition_diagnosis_severity.dart';
import 'service_report.dart';

class DiagnosisReport extends ServiceReport {
  final String type;
  final ConditionDiagnosisSeverity severity;
  final String conclusion;
  final DateTime? recordedTime;

  DiagnosisReport({
    required super.id,
    required super.category,
    required super.method,
    required super.status,
    required super.service,
    super.assessmentResults,
    super.effectiveTime,
    super.performer,
    required this.type,
    this.severity=ConditionDiagnosisSeverity.mild,
    required this.conclusion,
    this.recordedTime,
  });
}
