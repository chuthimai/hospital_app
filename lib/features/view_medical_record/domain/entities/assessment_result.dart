class AssessmentResult {
  final int id;
  final String name;
  String? value;
  final List<AssessmentResult> assessmentResults;

  AssessmentResult({
    required this.id,
    required this.name,
    this.value,
    List<AssessmentResult>? assessmentResults,
  }) : assessmentResults = assessmentResults ?? [];

  void addChildAssessmentResult(AssessmentResult assessmentResult) {
    assessmentResults.add(assessmentResult);
  }
}