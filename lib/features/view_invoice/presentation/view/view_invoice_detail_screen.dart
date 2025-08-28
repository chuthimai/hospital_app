import 'package:flutter/material.dart';

class ViewInvoiceDetailScreen extends StatelessWidget {
  const ViewInvoiceDetailScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ViewInvoiceDetailScreen'),
        ),
      ),
    );
  }
}