import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          invoice.status == InvoiceStatus.issued
              ? IconButton(
                  icon: const Icon(Icons.qr_code_2_outlined),
                  onPressed: () => {
                    context.push(
                      '/invoices/${invoice.id}/qr_code',
                      extra: invoice,
                    )
                  },
                  tooltip: "Mã QR thanh toán",
                )
              : const SizedBox(),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: DataTable(
                columnSpacing: 12.sp,
                headingTextStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
                headingRowColor: MaterialStateProperty.all(Colors.grey[200]),
                dataTextStyle: TextStyle(fontSize: 16.sp),
                columns: const [
                  DataColumn(
                      label: Text(
                    "STT",
                    textAlign: TextAlign.center,
                  )),
                  DataColumn(
                      label: Text(
                    "Tên dịch vụ",
                    textAlign: TextAlign.center,
                  )),
                  DataColumn(
                      label: Text(
                    "Chi phí",
                    textAlign: TextAlign.center,
                  )),
                ],
                rows: [
                  ...List.generate(
                    serviceInvoices.length,
                    (index) {
                      final ServiceInvoice item = serviceInvoices[index];
                      return DataRow(
                        color: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (index.isEven) {
                              return Colors.grey[300];
                            }
                            return null;
                          },
                        ),
                        cells: [
                          DataCell(Text("${index + 1}")),
                          DataCell(Text(
                            item.service.name,
                            textAlign: TextAlign.center,
                          )),
                          DataCell(Text(
                            MoneyFormatter.format(item.price),
                            textAlign: TextAlign.center,
                          )),
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
        ),
      ),
    );
  }
}
