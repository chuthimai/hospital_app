// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_report_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiagnosisReportApiModel _$DiagnosisReportApiModelFromJson(
        Map<String, dynamic> json) =>
    DiagnosisReportApiModel(
      type: json['type'] as String?,
      severity: json['severity'] as String?,
      conclusion: json['conclusion'] as String?,
    );

Map<String, dynamic> _$DiagnosisReportApiModelToJson(
        DiagnosisReportApiModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'severity': instance.severity,
      'conclusion': instance.conclusion,
    };
