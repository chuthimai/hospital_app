import 'package:flutter/material.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';
import '../../domain/entities/invoice.dart';
import '../widgets/qr_code_payment.dart';

class QrCodePaymentScreen extends StatelessWidget {
  final Invoice invoice;

  const QrCodePaymentScreen(this.invoice, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mã QR thanh toán'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrCodePayment(data: invoice.id.toString()),
            Text(
              "Thời gian tạo: ${DateFormatter.formatFull(DateTime.now())}"
            ),
          ],
        ),
      )),
    );
  }
}
