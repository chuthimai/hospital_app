import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/assessment_result.dart';
import 'assessment_item_api_model.dart';

part 'assessment_result_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AssessmentResultApiModel {
  final int id;
  final String value;
  final AssessmentItemApiModel assessmentItem;

  AssessmentResultApiModel({
    required this.id,
    required this.value,
    required this.assessmentItem,
  });

  factory AssessmentResultApiModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentResultApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$AssessmentResultApiModelToJson(this);

  AssessmentResult toEntity() => AssessmentResult(
    id: id,
    value: value,
    assessmentItem: assessmentItem.toEntity(),
  );

  factory AssessmentResultApiModel.fromEntity(AssessmentResult entity) {
    return AssessmentResultApiModel(
      id: entity.id,
      value: entity.value,
      assessmentItem: AssessmentItemApiModel.fromEntity(entity.assessmentItem),
    );
  }
}
