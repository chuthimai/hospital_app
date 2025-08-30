import 'prescribed_medication.dart';

class Prescription {
  final int id;
  final DateTime createTime;
  final List<PrescribedMedication> prescribedMedications;

  Prescription({
    required this.id,
    required this.createTime,
    this.prescribedMedications = const [],
  });
}
