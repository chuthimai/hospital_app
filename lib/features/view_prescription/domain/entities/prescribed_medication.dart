import 'medication.dart';

class PrescribedMedication {
  final int _id;
  final int _quantity;
  final String _dosageInstruction;
  final String? _note;
  final Medication _medication;

  PrescribedMedication({
    required int id,
    required int quantity,
    required String dosageInstruction,
    String? note,
    required Medication medication,
  }) : _id = id,
        _quantity = quantity,
        _dosageInstruction = dosageInstruction,
        _note = note,
        _medication = medication;

  int get id => _id;
  int get quantity => _quantity;
  String get dosageInstruction => _dosageInstruction;
  String? get note => _note;
  Medication get medication => _medication;
}