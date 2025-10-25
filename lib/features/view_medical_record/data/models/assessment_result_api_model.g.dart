// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_result_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssessmentResultApiModel _$AssessmentResultApiModelFromJson(
        Map<String, dynamic> json) =>
    AssessmentResultApiModel(
      id: (json['id'] as num).toInt(),
      value: json['value'] as String,
      assessmentItem: AssessmentItemApiModel.fromJson(
          json['assessmentItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AssessmentResultApiModelToJson(
        AssessmentResultApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'assessmentItem': instance.assessmentItem.toJson(),
    };
