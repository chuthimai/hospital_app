import 'package:flutter/material.dart';

class ViewFollowupAppointmentsScreen extends StatelessWidget {
  const ViewFollowupAppointmentsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Giấy hẹn tái khám'),
        ),
        body: const Center(
          child: Text('Không có dữ liệu'),
        ),
      ),
    );
  }
}