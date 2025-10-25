// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_item_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssessmentItemApiModel _$AssessmentItemApiModelFromJson(
        Map<String, dynamic> json) =>
    AssessmentItemApiModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      parentAssessmentItem: json['parentAssessmentItem'] == null
          ? null
          : AssessmentItemApiModel.fromJson(
              json['parentAssessmentItem'] as Map<String, dynamic>),
      measurementIndicator: json['measurementIndicator'] == null
          ? null
          : MeasurementIndicatorApiModel.fromJson(
              json['measurementIndicator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AssessmentItemApiModelToJson(
        AssessmentItemApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parentAssessmentItem': instance.parentAssessmentItem?.toJson(),
      'measurementIndicator': instance.measurementIndicator?.toJson(),
    };
