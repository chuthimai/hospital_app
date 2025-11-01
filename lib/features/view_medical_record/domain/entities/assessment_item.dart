class AssessmentItem {
  final int id;
  final String name;
  final List<AssessmentItem>? children;


  AssessmentItem({
    required this.id,
    required this.name,
    this.children,
  });
}