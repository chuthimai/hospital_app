class AssessmentCategory {
  final int id;
  final String name;
  final AssessmentCategory? parentCategory;

  AssessmentCategory({
    required this.id,
    required this.name,
    this.parentCategory,
  });
}
