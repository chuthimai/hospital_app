import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';
import 'package:hospital_app/features/view_service/domain/entities/service.dart';

import 'assessment_result.dart';
import 'enum/observation_category_code.dart';
import 'enum/observation_method.dart';
import 'enum/observation_status.dart';

class ServiceReport {
  final int _id;
  final ObservationCategoryCode _category;
  final ObservationMethod _method;
  final ObservationStatus _status;
  final DateTime? _effectiveTime;
  final DateTime? _recordedTime;
  final Service _service;
  final Physician? _performer;
  final List<AssessmentResult> _assessmentResults;

  ServiceReport({
    required int id,
    required ObservationCategoryCode category,
    ObservationMethod method = ObservationMethod.unknown,
    ObservationStatus status = ObservationStatus.final_,
    DateTime? effectiveTime,
    DateTime? recordedTime,
    required Service service,
    Physician? performer,
    List<AssessmentResult> assessmentResults = const [],
  }) : _id = id,
        _category = category,
        _method = method,
        _status = status,
        _effectiveTime = effectiveTime,
        _recordedTime = recordedTime,
        _service = service,
        _performer = performer,
        _assessmentResults = assessmentResults;

  int get id => _id;
  ObservationCategoryCode get category => _category;
  ObservationMethod get method => _method;
  ObservationStatus get status => _status;
  DateTime? get effectiveTime => _effectiveTime;
  DateTime? get recordedTime => _recordedTime;
  Service get service => _service;
  Physician? get performer => _performer;
  List<AssessmentResult> get assessmentResults => _assessmentResults;
}