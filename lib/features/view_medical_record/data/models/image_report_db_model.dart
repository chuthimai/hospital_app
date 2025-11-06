import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_category_code.dart';
import 'package:hospital_app/features/view_medical_record/domain/entities/enum/observation_method.dart';
import 'package:isar/isar.dart';
import '../../../view_doctor/data/models/physician_db_model.dart';
import '../../../view_service/data/models/service_db_model.dart';
import '../../domain/entities/enum/observation_status.dart';
import '../../domain/entities/image_report.dart';
import 'image_study_db_model.dart';
import 'assessment_result_db_model.dart';

part 'image_report_db_model.g.dart';

@collection
class ImageReportDbModel {
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

  // Trường riêng của ImageReport
  late String focus;
  final imageStudies = IsarLinks<ImageStudyDbModel>();
  late String interpretation;

  ImageReportDbModel({
    required this.id,
    required this.category,
    required this.method,
    required this.status,
    this.effectiveTime,

    required this.focus,
    required this.interpretation,
  });

  Future<ImageReport> toEntity() async {
    await Future.wait([
      service.load(),
      requester.load(),
      performer.load(),
      assessmentResults.load(),
    ]);

    return ImageReport(
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
      focus: focus,
      imageStudies:
      await Future.wait(imageStudies.map((e) async => e.toEntity())),
      interpretation: interpretation,
    );
  }

  factory ImageReportDbModel.fromEntity(ImageReport entity) {
    final model = ImageReportDbModel(
      id: entity.id,
      category: entity.category.name,
      method: entity.method.name,
      status: entity.status.name,
      effectiveTime: entity.effectiveTime,
      focus: entity.focus,
      interpretation: entity.interpretation,
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

    model.imageStudies.addAll(
      entity.imageStudies.map((e) => ImageStudyDbModel.fromEntity(e)),
    );

    return model;
  }
}
