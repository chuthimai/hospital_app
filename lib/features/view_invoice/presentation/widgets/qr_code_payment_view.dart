import 'package:flutter/material.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';

import '../../domain/entities/invoice.dart';
import 'qr_code_payment.dart';

class QrCodePaymentView extends StatelessWidget {
  final Invoice invoice;
  const QrCodePaymentView(this.invoice, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      QrCodePayment(data: invoice.id.toString()),
      Text("Thời gian tạo: ${DateFormatter.formatFull(DateTime.now())}"),
    ]);
  }
}
