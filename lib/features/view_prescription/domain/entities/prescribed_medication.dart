import 'medication.dart';

class PrescribedMedication {
  final int id;
  final Medication medication;
  final int quantity;
  final String dosageInstruction;
  final String? note;

  PrescribedMedication({
    required this.id,
    required this.medication,
    required this.quantity,
    required this.dosageInstruction,
    this.note,
  });
}
