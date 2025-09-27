import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/enum/invoice_status.dart';
import 'package:hospital_app/share/utils/money_formatter.dart';
import '../../domain/entities/invoice.dart';
import '../../domain/entities/service_invoice.dart';

class ViewInvoiceDetailScreen extends StatelessWidget {
  final Invoice invoice;

  const ViewInvoiceDetailScreen(this.invoice, {super.key});

  @override
  Widget build(BuildContext context) {
    final serviceInvoices = invoice.serviceInvoices;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết hoá đơn'),
        actions: [
          invoice.status == InvoiceStatus.issued ?
          IconButton(
            icon: const Icon(Icons.qr_code_2_outlined),
            onPressed: () => {
              context.push(
                '/invoices/${invoice.id}/qr_code',
                extra: invoice,
              )
            },
            tooltip: "Mã QR thanh toán",
          ): const SizedBox(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            columnSpacing: 24.0,
            headingRowColor: MaterialStateProperty.all(Colors.grey[200]),
            columns: const [
              DataColumn(label: Text("STT")),
              DataColumn(label: Text("Tên dịch vụ")),
              DataColumn(label: Text("Chi phí")),
            ],
            rows: [
              ...List.generate(
              serviceInvoices.length,
                  (index) {
                final ServiceInvoice item = serviceInvoices[index];
                return DataRow(
                  cells: [
                    DataCell(Text("${index + 1}")),
                    DataCell(Text(item.service.name)),
                    DataCell(Text(MoneyFormatter.format(item.price))),
                  ],
                );
              },
            ),
              // Hàng tổng cộng
              DataRow(
                cells: [
                  const DataCell(SizedBox()),
                  const DataCell(
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Tổng cộng",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Text(
                        MoneyFormatter.format(invoice.totalGross),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
