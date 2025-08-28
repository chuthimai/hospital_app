import 'package:flutter/material.dart';

class ViewPrescriptionsScreen extends StatelessWidget {
  const ViewPrescriptionsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ViewPrescriptionScreen'),
        ),
      ),
    );
  }
}