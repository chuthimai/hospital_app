import 'package:json_annotation/json_annotation.dart';
import '../../../view_doctor/data/models/physician_api_model.dart';
import '../../../view_service/data/models/service_api_model.dart';
import '../../domain/entities/enum/condition_diagnosis_severity.dart';
import 'assessment_result_api_model.dart';

part 'diagnosis_report_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class DiagnosisReportApiModel {
  final String? type;
  final String? severity;
  final String? conclusion;

  DiagnosisReportApiModel({
    this.type,
    this.severity,
    this.conclusion,
  });

  factory DiagnosisReportApiModel.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisReportApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$DiagnosisReportApiModelToJson(this);
}
