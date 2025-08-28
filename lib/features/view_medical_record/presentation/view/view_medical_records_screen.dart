import 'package:flutter/material.dart';
import 'package:hospital_app/features/view_medical_record/presentation/widgets/medical_records_view.dart';

class ViewMedicalRecordsScreen extends StatelessWidget {
  const ViewMedicalRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewMedicalRecordsScreen'),
      ),
      body: const MedicalRecordsView(),
    );
  }
}