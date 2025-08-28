import 'package:flutter/material.dart';

class ViewInvoicesScreen extends StatelessWidget {
  const ViewInvoicesScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ViewInvoicesScreen'),
        ),
      ),
    );
  }
}