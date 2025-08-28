import 'package:flutter/material.dart';

class ViewDoctorsScreen extends StatelessWidget {
  const ViewDoctorsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ViewDoctorsScreen'),
        ),
      ),
    );
  }
}