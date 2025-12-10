import 'package:flutter/material.dart';

class ViewTransferLettersScreen extends StatelessWidget {
  const ViewTransferLettersScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giấy chuyển viện'),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Không có dữ liệu'),
        ),
      ),
    );
  }
}