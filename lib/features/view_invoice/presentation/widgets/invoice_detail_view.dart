import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_app/features/view_invoice/presentation/cubit/invoice_cubit.dart';
import 'package:hospital_app/share/utils/money_formatter.dart';

import '../../domain/entities/invoice.dart';
import '../../domain/entities/service_invoice.dart';
import '../cubit/invoice_state.dart';

class InvoiceDetailView extends StatefulWidget {
  final Invoice invoice;

  const InvoiceDetailView(this.invoice, {super.key});

  @override
  State<InvoiceDetailView> createState() => _InvoiceDetailViewState();
}

class _InvoiceDetailViewState extends State<InvoiceDetailView> {
  @override
  void initState() {
    super.initState();
    context.read<InvoiceCubit>().getDetailInvoice(widget.invoice);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvoiceCubit, InvoiceState>(builder: (context, state) {
      if (state is InvoiceInitial) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (state is InvoiceGetDetailFailure) {
        return Center(
          child: Text(state.message),
        );
      }

      final invoice = (state as InvoiceGetDetailSuccess).invoice;
      final serviceInvoices = invoice.serviceInvoices;
      if (serviceInvoices.isEmpty) {
        return const Center(
          child: Text("Không có thông tin"),
        );
      }

      return SingleChildScrollView(
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
                            item.service?.name ?? "Không có thông tin",
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
                            MoneyFormatter.format(widget.invoice.totalGross),
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
      );
    });
  }
}
