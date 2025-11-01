import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';

import 'prescribed_medication.dart';

class Prescription {
  final int id;
  final DateTime createTime;
  final List<PrescribedMedication> prescribedMedications;
  final Physician? performer;
  final String? note;

  Prescription({
    required this.id,
    required this.createTime,
    this.prescribedMedications = const [],
    this.performer,
    this.note
  });
}
