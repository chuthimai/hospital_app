import 'assessment_item.dart';

class AssessmentQuestion extends AssessmentItem {
  final String? detailDescription;

  AssessmentQuestion({
    required super.id,
    required super.name,
    this.detailDescription,
  });
}
