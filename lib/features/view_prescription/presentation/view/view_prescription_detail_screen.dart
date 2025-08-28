import 'package:flutter/material.dart';

class ViewPrescriptionDetailScreen extends StatelessWidget {
  const ViewPrescriptionDetailScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ViewPrescriptionDetailScreen'),
        ),
      ),
    );
  }
}