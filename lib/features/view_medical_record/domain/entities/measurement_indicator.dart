import 'assessment_result.dart';

class MeasurementIndicator extends AssessmentResult {
  final String type;
  final String unit;
  final String? minimum;
  final String? maximum;

  MeasurementIndicator({
    required super.id,
    required super.name,
    super.value,
    super.assessmentResults,
    required this.type,
    required this.unit,
    this.minimum,
    this.maximum,
  });
}
