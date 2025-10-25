import 'package:hospital_app/features/view_medical_record/domain/entities/measurement_indicator.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/assessment_item.dart';
import 'measurement_indicator_api_model.dart';

part 'assessment_item_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AssessmentItemApiModel {
  final int id;
  final String name;
  final AssessmentItemApiModel? parentAssessmentItem;
  final MeasurementIndicatorApiModel? measurementIndicator;

  AssessmentItemApiModel({
    required this.id,
    required this.name,
    this.parentAssessmentItem,
    this.measurementIndicator,
  });

  factory AssessmentItemApiModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentItemApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$AssessmentItemApiModelToJson(this);

  AssessmentItem toEntity() {
    if (measurementIndicator != null) {
      return MeasurementIndicator(
        id: id,
        name: name,
        type: measurementIndicator!.type,
        unit: measurementIndicator!.unit,
        minimum: measurementIndicator!.minimum,
        maximum: measurementIndicator!.maximum,
      );
    }

    return AssessmentItem(
      id: id,
      name: name,
      parentAssessmentItem: parentAssessmentItem?.toEntity(),
    );
  }

  factory AssessmentItemApiModel.fromEntity(AssessmentItem entity) {
    if (entity is MeasurementIndicator) {
      return AssessmentItemApiModel(
        id: entity.id,
        name: entity.name,
        parentAssessmentItem: entity.parentAssessmentItem != null
            ? AssessmentItemApiModel.fromEntity(entity.parentAssessmentItem!)
            : null,
        measurementIndicator: MeasurementIndicatorApiModel(
          type: entity.type,
          unit: entity.unit,
          maximum: entity.maximum,
          minimum: entity.minimum,
        ),
      );
    }

    return AssessmentItemApiModel(
      id: entity.id,
      name: entity.name,
      parentAssessmentItem: entity.parentAssessmentItem != null
          ? AssessmentItemApiModel.fromEntity(entity.parentAssessmentItem!)
          : null,
    );
  }
}
