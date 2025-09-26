import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/fakedata/invoice.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/enum/invoice_status.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';

import '../../domain/entities/invoice.dart';

class ViewInvoicesScreen extends StatelessWidget {
  const ViewInvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Invoice> invoices = fakeInvoices;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoá đơn'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: invoices.length,
          itemBuilder: (context, index) {
            final invoice = invoices[index];
            return Card(
              key: ValueKey(invoice.id),
              color: invoice.status == InvoiceStatus.issued ? Theme.of(context).cardColor : Theme.of(context).disabledColor,
              margin: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 6.sp),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.sp),
              ),
              child: InkWell(
                child: ListTile(
                  title: Text(
                    "Hoá đơn #${invoice.id}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                      "Ngày tạo: ${DateFormatter.format(invoice.createdTime ?? DateTime.now())}\n"
                          "Trạng thái: ${invoice.status.toVietnamese()}"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                onTap: () => context.push(
                  '/invoices/${invoice.id}',
                  extra: invoice,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}