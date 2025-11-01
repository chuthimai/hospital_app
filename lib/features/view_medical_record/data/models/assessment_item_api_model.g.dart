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
      children: (json['children'] as List<dynamic>?)
          ?.map(
              (e) => AssessmentItemApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'measurementIndicator': instance.measurementIndicator?.toJson(),
    };
