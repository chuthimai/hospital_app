import 'package:hospital_app/features/view_medical_record/domain/entities/service_report.dart';

import 'image_study.dart';

class ImagingReport extends ServiceReport {
  final String focus;
  final String interpretation;
  final List<ImageStudy> imageStudies;

  ImagingReport({
    required super.id,
    required super.category,
    required super.method,
    required super.status,
    required super.service,
    required super.requester,
    super.performer,
    super.assessmentResults,
    super.effectiveTime,
    required this.focus,
    required this.interpretation,
    this.imageStudies = const [],
  });
}
