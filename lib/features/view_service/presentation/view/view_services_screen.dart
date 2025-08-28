import 'package:flutter/material.dart';
import 'package:hospital_app/features/view_service/presentation/widgets/services_view.dart';

class ViewServicesScreen extends StatelessWidget {
  const ViewServicesScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ViewServicesScreen'),
        ),
        body: const ServicesView(),
      ),
    );
  }
}