import 'package:hospital_app/features/view_medical_record/domain/entities/service_report.dart';

import 'image_study.dart';

class ImageReport extends ServiceReport {
  final String _focus;
  final List<ImageStudy> _imageStudies;
  final String _interpretation;

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
    required String focus,
    List<ImageStudy> imageStudies = const [],
    required String interpretation,
  }) : _focus = focus,
        _imageStudies = imageStudies,
        _interpretation = interpretation;

  String get focus => _focus;
  List<ImageStudy> get imageStudies => _imageStudies;
  String get interpretation => _interpretation;
}