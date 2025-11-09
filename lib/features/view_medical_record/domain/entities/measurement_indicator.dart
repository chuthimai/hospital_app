import 'assessment_result.dart';

class MeasurementIndicator extends AssessmentResult {
  final String type;
  final String unit;
  final double? minimum;
  final double? maximum;

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
