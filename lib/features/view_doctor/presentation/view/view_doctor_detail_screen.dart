import 'package:flutter/material.dart';

class ViewDoctorDetailScreen extends StatelessWidget {
  const ViewDoctorDetailScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ViewDoctorDetailScreen'),
        ),
      ),
    );
  }
}