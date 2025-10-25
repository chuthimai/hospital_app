import 'package:isar/isar.dart';
import '../../domain/entities/measurement_indicator.dart';
import 'assessment_item_db_model.dart';

part 'measurement_indicator_db_model.g.dart';

@collection
class MeasurementIndicatorDbModel {
  Id id;
  late String name;
  late String type;
  late String unit;
  double? minimum;
  double? maximum;

  final parentAssessmentItem = IsarLink<AssessmentItemDbModel>();

  MeasurementIndicatorDbModel({
    required this.id,
    required this.name,
    required this.type,
    required this.unit,
    this.minimum,
    this.maximum,
  });

  Future<MeasurementIndicator> toEntity() async {
    await parentAssessmentItem.load();
    return MeasurementIndicator(
      id: id,
      name: name,
      type: type,
      unit: unit,
      minimum: minimum,
      maximum: maximum,
    );
  }

  factory MeasurementIndicatorDbModel.fromEntity(
      MeasurementIndicator entity) {
    final model = MeasurementIndicatorDbModel(
      id: entity.id,
      name: entity.name,
      type: entity.type,
      unit: entity.unit,
      minimum: entity.minimum,
      maximum: entity.maximum,
    );
    return model;
  }
}
