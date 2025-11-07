import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';

import '../../domain/entities/enum/invoice_status.dart';
import '../../domain/entities/invoice.dart';

class InvoiceCard extends StatelessWidget {
  final Invoice invoice;
  const InvoiceCard(this.invoice, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      key: ValueKey(invoice.id),
      color: invoice.status == InvoiceStatus.issued
          ? Theme.of(context).cardColor
          : Theme.of(context).disabledColor,
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
  }

}