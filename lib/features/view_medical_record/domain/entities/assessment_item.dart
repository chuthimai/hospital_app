class AssessmentItem {
  final int id;
  final String name;
  final AssessmentItem? parentAssessmentItem;

  AssessmentItem({
    required this.id,
    required this.name,
    this.parentAssessmentItem,
  });
}