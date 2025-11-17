class AssessmentResult {
  final int _id;
  final String _name;
  String? value;
  final List<AssessmentResult> _assessmentResults;

  AssessmentResult({
    required int id,
    required String name,
    this.value,
    List<AssessmentResult>? assessmentResults,
  }) : _id = id,
        _name = name,
        _assessmentResults = assessmentResults ?? [];

  int get id => _id;
  String get name => _name;
  List<AssessmentResult> get assessmentResults => _assessmentResults;

  void addChildAssessmentResult(AssessmentResult assessmentResult) {
    _assessmentResults.add(assessmentResult);
  }
}