import 'assessment_item.dart';

class AssessmentResult {
  final int id;
  final String value;
  final AssessmentItem assessmentItem;

  AssessmentResult({
    required this.id,
    required this.value,
    required this.assessmentItem,
  });
}