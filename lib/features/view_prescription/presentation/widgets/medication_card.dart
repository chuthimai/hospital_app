import 'package:flutter/material.dart';

import '../../domain/entities/prescribed_medication.dart';

class MedicationCard extends StatelessWidget {
  final PrescribedMedication prescribedMedication;

  const MedicationCard(this.prescribedMedication, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 1,
      child: ListTile(
        leading: const Icon(Icons.medication),
        title: Text(prescribedMedication.medication.name),
        subtitle: Text(
          "Dạng đóng gói: ${prescribedMedication.medication.doseForm}\n"
              "Số lượng: ${prescribedMedication.quantity}\n"
              "Cách dùng thuốc: ${prescribedMedication.dosageInstruction}"
              "${prescribedMedication.note != null ? "\nGhi chú: ${prescribedMedication.note}" : ""}",
        ),
        isThreeLine: true,
      ),
    );
  }
  
}