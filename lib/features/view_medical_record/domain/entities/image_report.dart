import 'package:hospital_app/features/view_medical_record/domain/entities/service_report.dart';

import 'image_study.dart';

class ImageReport extends ServiceReport {
  final String focus;
  final List<ImageStudy> imageStudies;
  final String interpretation;

  ImageReport({
    required super.id,
    required super.category,
    required super.method,
    required super.status,
    required super.service,
    super.performer,
    super.assessmentResults,
    super.recordedTime,
    super.effectiveTime,
    required this.focus,
    this.imageStudies = const [],
    required this.interpretation,
  });
}
