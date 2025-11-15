import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/view_invoice/presentation/cubit/invoice_cubit.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';

import '../../domain/entities/invoice.dart';
import '../cubit/invoice_state.dart';
import 'qr_code_payment.dart';

class QrCodePaymentView extends StatefulWidget {
  final Invoice invoice;
  const QrCodePaymentView(this.invoice, {super.key});

  @override
  State<QrCodePaymentView> createState() => _QrCodePaymentViewState();
}

class _QrCodePaymentViewState extends State<QrCodePaymentView> {
  @override
  void initState() {
    super.initState();
    context.read<InvoiceCubit>().getQrCodeInvoice(widget.invoice);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvoiceCubit, InvoiceState>(
      builder: (context, state) {
        if (state is InvoiceInitial) {
          return const Center(child: CircularProgressIndicator(),);
        }

        if (state is InvoiceGetQrCodeFailure) {
          return Center(child: Text(state.message),);
        }
        final data = state as InvoiceGetQrCodeSuccess;
        return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          QrCodePayment(data: data.code),
          Text("Thời gian tạo: ${DateFormatter.formatFull(DateTime.now())}"),
        ]);
      }
    );
  }
}
