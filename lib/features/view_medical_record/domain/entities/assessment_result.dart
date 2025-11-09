class AssessmentResult {
  final int id;
  final String name;
  final String? value;
  final List<AssessmentResult> assessmentResults;

  AssessmentResult({
    required this.id,
    required this.name,
    this.value,
    this.assessmentResults = const [],
  });
}