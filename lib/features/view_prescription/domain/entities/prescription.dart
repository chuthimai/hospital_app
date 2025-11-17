import 'package:hospital_app/features/view_doctor/domain/entities/physician.dart';

import 'prescribed_medication.dart';

class Prescription {
  final int _id;
  final DateTime _createdTime;
  final List<PrescribedMedication> _prescribedMedications;
  final Physician? _performer;
  final String? _note;

  Prescription({
    required int id,
    required DateTime createdTime,
    List<PrescribedMedication> prescribedMedications = const [],
    Physician? performer,
    String? note,
  }) : _id = id,
        _createdTime = createdTime,
        _prescribedMedications = prescribedMedications,
        _performer = performer,
        _note = note;

  int get id => _id;
  DateTime get createdTime => _createdTime;
  List<PrescribedMedication> get prescribedMedications => _prescribedMedications;
  Physician? get performer => _performer;
  String? get note => _note;
}