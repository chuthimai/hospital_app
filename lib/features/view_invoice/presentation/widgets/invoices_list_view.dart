import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/view_invoice/presentation/cubit/invoice_cubit.dart';

import '../cubit/invoice_state.dart';
import 'invoice_card.dart';

class InvoicesListView extends StatefulWidget {
  const InvoicesListView({super.key});

  @override
  State<InvoicesListView> createState() => _InvoicesListViewState();
}

class _InvoicesListViewState extends State<InvoicesListView> {
  @override
  void initState() {
    super.initState();
    context.read<InvoiceCubit>().getAllInvoices();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvoiceCubit, InvoiceState>(builder: (context, state) {
      if (state is InvoiceInitial) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      if (state is InvoiceGetAllFailure) {
        return Center(
          child: Text(state.message),
        );
      }
      final invoices = (state as InvoiceGetAllSuccess).invoices;
      if (invoices.isEmpty) {
        return const Center(
          child: Text("Không có hoá đơn"),
        );
      }

      return ListView.builder(
        itemCount: invoices.length,
        itemBuilder: (context, index) {
          final invoice = invoices[index];
          return InvoiceCard(invoice);
        },
      );
    });
  }
}
