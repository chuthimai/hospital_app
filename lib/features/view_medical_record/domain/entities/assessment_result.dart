import 'assessment_item.dart';
import 'service_report.dart';

class AssessmentResult {
  final int id;
  final String value;
  final ServiceReport serviceReport;
  final AssessmentItem assessmentItem;

  AssessmentResult({
    required this.id,
    required this.value,
    required this.serviceReport,
    required this.assessmentItem,
  });
}