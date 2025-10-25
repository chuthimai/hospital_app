import 'package:hospital_app/features/view_medical_record/data/models/image_study_api_model.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/diagnosis_report.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/condition_diagnosis_severity.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_category_code.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_method.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/image_report.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../view_doctor/data/models/physician_api_model.dart';
import '../../../view_service/data/models/service_api_model.dart';
import '../../domain/entities/service_report.dart';
import '../../domain/entities/enum/observation_status.dart';
import 'assessment_result_api_model.dart';
import 'diagnosis_report_api_model.dart';
import 'imaging_report_api_model.dart';

part 'service_report_api_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ServiceReportApiModel {
  final int id;
  final String category;
  final String method;
  final String status;
  final DateTime? effectiveTime;
  final ServiceApiModel service;
  final PhysicianApiModel requester;
  final PhysicianApiModel? performer;
  final List<AssessmentResultApiModel> assessmentResults;
  final DiagnosisReportApiModel? diagnosisReport;
  final ImagingReportApiModel? imagingReport;

  ServiceReportApiModel(
      {required this.id,
      required this.category,
      required this.method,
      required this.status,
      this.effectiveTime,
      required this.service,
      required this.requester,
      this.performer,
      this.assessmentResults = const [],
      this.diagnosisReport,
      this.imagingReport});

  factory ServiceReportApiModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceReportApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceReportApiModelToJson(this);

  /// Convert API model → Domain entity
  ServiceReport toEntity() {
    if (diagnosisReport != null) {
      return DiagnosisReport(
        id: id,
        category: ObservationCategoryCodeExtension.fromCode(category),
        method: ObservationMethodExtension.fromCode(method),
        status: ObservationStatusExtension.fromCode(status),
        service: service.toEntity(),
        requester: requester.toEntity(),
        performer: performer?.toEntity(),
        assessmentResults: assessmentResults.map((r) => r.toEntity()).toList(),
        type: diagnosisReport!.type,
        conclusion: diagnosisReport!.conclusion,
        severity: ConditionDiagnosisSeverityExtension.fromCode(
            diagnosisReport!.severity),
        recordedTime: diagnosisReport!.recordedTime,
      );
    }

    if (imagingReport != null) {
      return ImageReport(
        id: id,
        category: ObservationCategoryCodeExtension.fromCode(category),
        method: ObservationMethodExtension.fromCode(method),
        status: ObservationStatusExtension.fromCode(status),
        service: service.toEntity(),
        requester: requester.toEntity(),
        performer: performer?.toEntity(),
        assessmentResults: assessmentResults.map((r) => r.toEntity()).toList(),
        focus: imagingReport!.focus,
        interpretation: imagingReport!.interpretation,
        imageStudies:
            imagingReport!.imageStudies.map((e) => e.toEntity()).toList(),
      );
    }
    return ServiceReport(
      id: id,
      category: ObservationCategoryCodeExtension.fromCode(category),
      method: ObservationMethodExtension.fromCode(method),
      status: ObservationStatusExtension.fromCode(status),
      service: service.toEntity(),
      requester: requester.toEntity(),
      performer: performer?.toEntity(),
      assessmentResults: assessmentResults.map((r) => r.toEntity()).toList(),
    );
  }

  /// Convert Domain entity → API model
  factory ServiceReportApiModel.fromEntity(ServiceReport entity) {
    if (entity is DiagnosisReport) {
      return ServiceReportApiModel(
        id: entity.id,
        category: entity.category.name,
        method: entity.method.name,
        status: entity.status.name,
        effectiveTime: entity.effectiveTime,
        service: ServiceApiModel.fromEntity(entity.service),
        requester: PhysicianApiModel.fromEntity(entity.requester),
        performer: entity.performer == null
            ? null
            : PhysicianApiModel.fromEntity(entity.performer!),
        assessmentResults: entity.assessmentResults
            .map((e) => AssessmentResultApiModel.fromEntity(e))
            .toList(),
        diagnosisReport: DiagnosisReportApiModel(
          type: entity.type,
          severity: entity.severity.name,
          conclusion: entity.conclusion,
        ),
      );
    }

    if (entity is ImageReport) {
      return ServiceReportApiModel(
        id: entity.id,
        category: entity.category.name,
        method: entity.method.name,
        status: entity.status.name,
        effectiveTime: entity.effectiveTime,
        service: ServiceApiModel.fromEntity(entity.service),
        requester: PhysicianApiModel.fromEntity(entity.requester),
        performer: entity.performer == null
            ? null
            : PhysicianApiModel.fromEntity(entity.performer!),
        assessmentResults: entity.assessmentResults
            .map((e) => AssessmentResultApiModel.fromEntity(e))
            .toList(),
        imagingReport: ImagingReportApiModel(
          focus: entity.focus,
          interpretation: entity.interpretation,
          imageStudies: entity.imageStudies
              .map((e) => ImageStudyApiModel.fromEntity(e))
              .toList(),
        ),
      );
    }

    return ServiceReportApiModel(
      id: entity.id,
      category: entity.category.name,
      method: entity.method.name,
      status: entity.status.name,
      effectiveTime: entity.effectiveTime,
      service: ServiceApiModel.fromEntity(entity.service),
      requester: PhysicianApiModel.fromEntity(entity.requester),
      performer: entity.performer == null
          ? null
          : PhysicianApiModel.fromEntity(entity.performer!),
      assessmentResults: entity.assessmentResults
          .map((e) => AssessmentResultApiModel.fromEntity(e))
          .toList(),
    );
  }
}
