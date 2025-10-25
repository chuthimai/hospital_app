import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';
import 'package:hospital_app/features/view_service/domain/entities/service.dart';

import 'assessment_result.dart';
import 'enum/observation_category_code.dart';
import 'enum/observation_method.dart';
import 'enum/observation_status.dart';

class ServiceReport {
  final int id;
  final ObservationCategoryCode category;
  final ObservationMethod method;
  final ObservationStatus status;
  final DateTime? effectiveTime;
  final Service service;
  final Physician requester;
  final Physician? performer;
  final List<AssessmentResult> assessmentResults;

  ServiceReport({
    required this.id,
    required this.category,
    this.method = ObservationMethod.unknown,
    this.status = ObservationStatus.final_,
    this.effectiveTime,
    required this.service,
    required this.requester,
    this.performer,
    this.assessmentResults = const [],
  });
}
