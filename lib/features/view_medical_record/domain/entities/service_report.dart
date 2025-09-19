import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';
import 'package:hospital_app/features/view_service/domain/entities/service.dart';

import 'assessment_result.dart';
import 'enum/observation_status.dart';

class ServiceReport {
  final int id;
  final String category;
  final String method;
  final ObservationStatus status;
  final DateTime? effectiveTime;
  final Service service;
  final Physician requester;
  final Physician? performer;
  final List<AssessmentResult> assessmentResults;

  ServiceReport({
    required this.id,
    required this.category,
    required this.method,
    this.status = ObservationStatus.final_,
    this.effectiveTime,
    required this.service,
    required this.requester,
    this.performer,
    this.assessmentResults = const [],
  });
}
