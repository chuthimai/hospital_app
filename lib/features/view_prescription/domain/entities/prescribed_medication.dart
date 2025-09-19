import 'medication.dart';

class PrescribedMedication {
  final int id;
  final int quantity;
  final String dosageInstruction;
  final String? note;
  final Medication medication;

  PrescribedMedication({
    required this.id,
    required this.quantity,
    required this.dosageInstruction,
    this.note,
    required this.medication,
  });
}
