import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/medication.dart';
import '../../domain/entities/prescribed_medication.dart';
import '../../domain/entities/prescription.dart';

class ViewPrescriptionsScreen extends StatelessWidget {
  const ViewPrescriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final prescriptions = mockPrescriptions();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Prescriptions'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: prescriptions.length,
          itemBuilder: (context, index) {
            final prescription = prescriptions[index];
            return Card(
              key: ValueKey(prescription.id),
              margin: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.sp),
              ),
              child: InkWell(
                child: ListTile(
                  title: Text(
                    "Đơn thuốc #${prescription.id}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                      "Ngày tạo: ${prescription.createTime.toLocal().toString().split(' ')[0]}"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                onTap: () => context.push('/prescriptions/${prescription.id}',
                    extra: prescription),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Mock data
List<Prescription> mockPrescriptions() {
  final med1 = Medication(id: 1, name: "Paracetamol", doseForm: "Tablet");
  final med2 = Medication(id: 2, name: "Amoxicillin", doseForm: "Capsule");

  final pm1 = PrescribedMedication(
    id: 1,
    medication: med1,
    quantity: 10,
    dosageInstruction: "2 tablets per day",
  );

  final pm2 = PrescribedMedication(
    id: 2,
    medication: med2,
    quantity: 20,
    dosageInstruction: "1 capsule every 8 hours",
    note: "Take after meals",
  );

  return [
    Prescription(
      id: 1001,
      createTime: DateTime.now().subtract(const Duration(days: 1)),
      prescribedMedications: [pm1, pm2],
    ),
    Prescription(
      id: 1002,
      createTime: DateTime.now().subtract(const Duration(days: 2)),
      prescribedMedications: [pm1],
    ),
    Prescription(
      id: 1003,
      createTime: DateTime.now().subtract(const Duration(days: 5)),
      prescribedMedications: [],
    ),
  ];
}
