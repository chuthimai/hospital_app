import 'package:flutter/material.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';

import '../../domain/entities/prescription.dart';
import '../widgets/medication_card.dart';

class ViewPrescriptionDetailScreen extends StatelessWidget {
  final Prescription prescription;

  const ViewPrescriptionDetailScreen(this.prescription, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Đơn thuốc chi tiết"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Thông tin chung
              Card(
                elevation: 2,
                margin: const EdgeInsets.only(bottom: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: const Icon(Icons.description),
                  title: Text(
                    "Đơn thuốc khám ${prescription.performer?.specialty?.name}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Bác sỹ kê đơn: ${prescription.performer?.name}\n"
                        "Ngày tạo: ${DateFormatter.format(prescription.createTime)}",
                  ),
                ),
              ),
              const SizedBox(height: 8),

              const Text(
                "Danh sách thuốc",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Expanded(
                child: prescription.prescribedMedications.isEmpty
                    ? const Center(child: Text("Không có thuốc nào trong đơn thuốc này"))
                    : ListView.builder(
                  itemCount: prescription.prescribedMedications.length,
                  itemBuilder: (context, index) {
                    final pm = prescription.prescribedMedications[index];
                    return MedicationCard(pm);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}