import 'enum/condition_diagnosis_severity.dart';
import 'service_report.dart';

class DiagnosisReport extends ServiceReport {
  final String _type;
  final ConditionDiagnosisSeverity _severity;
  final String _conclusion;

  DiagnosisReport({
    required super.id,
    required super.category,
    required super.method,
    required super.status,
    required super.service,
    super.assessmentResults,
    super.effectiveTime,
    super.performer,
    required String type,
    ConditionDiagnosisSeverity severity = ConditionDiagnosisSeverity.unknow,
    required String conclusion,
    super.recordedTime,
  }) : _type = type,
        _severity = severity,
        _conclusion = conclusion;

  String get type => _type;
  ConditionDiagnosisSeverity get severity => _severity;
  String get conclusion => _conclusion;
}