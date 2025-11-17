import 'assessment_result.dart';

class MeasurementIndicator extends AssessmentResult {
  final String _type;
  final String _unit;
  final String? _minimum;
  final String? _maximum;

  MeasurementIndicator({
    required super.id,
    required super.name,
    super.value,
    super.assessmentResults,
    required String type,
    required String unit,
    String? minimum,
    String? maximum,
  }) : _type = type,
        _unit = unit,
        _minimum = minimum,
        _maximum = maximum;

  String get type => _type;
  String get unit => _unit;
  String? get minimum => _minimum;
  String? get maximum => _maximum;
}