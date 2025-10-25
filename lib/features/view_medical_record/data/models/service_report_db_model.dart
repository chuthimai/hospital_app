import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_category_code.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_method.dart';
import 'package:isar/isar.dart';
import '../../../view_doctor/data/models/physician_db_model.dart';
import '../../../view_service/data/models/service_db_model.dart';
import '../../domain/entities/service_report.dart';
import '../../domain/entities/enum/observation_status.dart';
import 'assessment_result_db_model.dart';

part 'service_report_db_model.g.dart';

@collection
class ServiceReportDbModel {
  Id id;
  late String category;
  late String method;
  late String status;
  DateTime? effectiveTime;

  final service = IsarLink<ServiceDbModel>();
  final requester = IsarLink<PhysicianDbModel>();
  final performer = IsarLink<PhysicianDbModel>();
  final assessmentResults = IsarLinks<AssessmentResultDbModel>();

  ServiceReportDbModel({
    required this.id,
    required this.category,
    required this.method,
    required this.status,
    this.effectiveTime,
  });

  /// Convert DB model → Domain entity
  Future<ServiceReport> toEntity() async {
    await Future.wait([
      service.load(),
      requester.load(),
      performer.load(),
      assessmentResults.load(),
    ]);

    return ServiceReport(
      id: id,
      category: ObservationCategoryCodeExtension.fromCode(category),
      method: ObservationMethodExtension.fromCode(method),
      status: ObservationStatusExtension.fromCode(status),
      effectiveTime: effectiveTime,
      service: service.value!.toEntity(),
      requester: await requester.value!.toEntity(),
      performer: await performer.value?.toEntity(),
      assessmentResults: await Future.wait(
        assessmentResults.map((r) => r.toEntity()),
      ),
    );
  }

  /// Convert Domain entity → DB model
  factory ServiceReportDbModel.fromEntity(ServiceReport entity) {
    final model = ServiceReportDbModel(
      id: entity.id,
      category: entity.category.name,
      method: entity.method.name,
      status: entity.status.name,
      effectiveTime: entity.effectiveTime,
    );

    model.service.value = ServiceDbModel.fromEntity(entity.service);
    model.requester.value = PhysicianDbModel.fromEntity(entity.requester);
    if (entity.performer != null) {
      model.performer.value = PhysicianDbModel.fromEntity(entity.performer!);
    }
    model.assessmentResults.addAll(entity.assessmentResults
        .map((e) => AssessmentResultDbModel.fromEntity(e)));

    return model;
  }
}
