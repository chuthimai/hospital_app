import 'package:json_annotation/json_annotation.dart';

part 'laboratory_report_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LaboratoryReportApiModel {
  final String? interpretation;

  LaboratoryReportApiModel({
    this.interpretation,
  });

  factory LaboratoryReportApiModel.fromJson(Map<String, dynamic> json) =>
      _$LaboratoryReportApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$LaboratoryReportApiModelToJson(this);
}
