import 'assessment_item.dart';

class MeasurementIndicator extends AssessmentItem {
  final String type;
  final String unit;
  final double? minimum;
  final double? maximum;

  MeasurementIndicator({
    required super.id,
    required super.name,
    required this.type,
    required this.unit,
    this.minimum,
    this.maximum,
  });
}
