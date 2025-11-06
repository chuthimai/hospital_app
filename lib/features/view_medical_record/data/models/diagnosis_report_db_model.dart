import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_category_code.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_method.dart';
import 'package:isar/isar.dart';
import '../../../view_doctor/data/models/physician_db_model.dart';
import '../../../view_service/data/models/service_db_model.dart';
import '../../domain/entities/diagnosis_report.dart';
import '../../domain/entities/enum/observation_status.dart';
import '../../domain/entities/enum/condition_diagnosis_severity.dart';
import 'assessment_result_db_model.dart';

part 'diagnosis_report_db_model.g.dart';

@collection
class DiagnosisReportDbModel {
  Id id;
  late String category;
  late String method;
  late String status;
  DateTime? effectiveTime;

  // Links chung với ServiceReportDbModel
  final service = IsarLink<ServiceDbModel>();
  final requester = IsarLink<PhysicianDbModel>();
  final performer = IsarLink<PhysicianDbModel>();
  final assessmentResults = IsarLinks<AssessmentResultDbModel>();

  // Trường riêng của DiagnosisReport
  late String type;
  late String severity;
  late String conclusion;
  DateTime? recordedTime;

  DiagnosisReportDbModel({
    required this.id,
    required this.category,
    required this.method,
    required this.status,
    this.effectiveTime,
    required this.type,
    required this.severity,
    required this.conclusion,
    this.recordedTime,
  });

  /// Convert DB model → Domain entity
  Future<DiagnosisReport> toEntity() async {
    await Future.wait([
      service.load(),
      requester.load(),
      performer.load(),
      assessmentResults.load(),
    ]);

    return DiagnosisReport(
      id: id,
      category: ObservationCategoryCodeExtension.fromCode(category),
      method: ObservationMethodExtension.fromCode(method),
      status: ObservationStatusExtension.fromCode(status),
      effectiveTime: effectiveTime,
      service: await service.value!.toEntity(),
      requester: await requester.value!.toEntity(),
      performer: await performer.value?.toEntity(),
      assessmentResults: await Future.wait(
        assessmentResults.map((e) => e.toEntity()),
      ),
      type: type,
      severity: ConditionDiagnosisSeverityExtension.fromCode(severity),
      conclusion: conclusion,
      recordedTime: recordedTime,
    );
  }

  /// Convert Domain entity → DB model
  factory DiagnosisReportDbModel.fromEntity(DiagnosisReport entity) {
    final model = DiagnosisReportDbModel(
      id: entity.id,
      category: entity.category.name,
      method: entity.method.name,
      status: entity.status.name,
      effectiveTime: entity.effectiveTime,
      type: entity.type,
      severity: entity.severity.name,
      conclusion: entity.conclusion,
      recordedTime: entity.recordedTime,
    );

    model.service.value = ServiceDbModel.fromEntity(entity.service);
    model.requester.value = PhysicianDbModel.fromEntity(entity.requester);
    if (entity.performer != null) {
      model.performer.value = PhysicianDbModel.fromEntity(entity.performer!);
    }
    model.assessmentResults.addAll(
      entity.assessmentResults.map(
            (e) => AssessmentResultDbModel.fromEntity(e),
      ),
    );

    return model;
  }
}
