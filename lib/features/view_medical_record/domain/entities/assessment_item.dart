
import 'assessment_category.dart';

class AssessmentItem {
  final int id;
  final String name;
  final AssessmentCategory? assessmentCategory;

  AssessmentItem({
    required this.id,
    required this.name,
    this.assessmentCategory,
  });
}