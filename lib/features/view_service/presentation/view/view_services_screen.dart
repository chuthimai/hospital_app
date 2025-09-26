import 'package:flutter/material.dart';
import 'package:hospital_app/features/view_service/presentation/widgets/services_view.dart';

class ViewServicesScreen extends StatelessWidget {
  const ViewServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dịch vụ cần làm'),
      ),
      body: SafeArea(child: ServicesView()),
    );
  }
}