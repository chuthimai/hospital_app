import 'package:flutter/material.dart';

class ViewMedicalRecordDetailScreen extends StatelessWidget {
  const ViewMedicalRecordDetailScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ViewMedicalRecordDetailScreen'),
        ),
      ),
    );
  }
}