import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../data/datasource/invoice_local_data_source.dart';
import '../../data/datasource/invoice_remote_data_source.dart';
import '../../data/repositories/invoice_repository_impl.dart';
import '../../domain/entities/enum/invoice_status.dart';
import '../../domain/entities/invoice.dart';
import '../../domain/repositories/invoice_repository.dart';
import '../cubit/invoice_cubit.dart';
import '../widgets/invoice_detail_view.dart';

class ViewInvoiceDetailScreen extends StatelessWidget {
  final Invoice invoice;

  ViewInvoiceDetailScreen(this.invoice, {super.key});

  final InvoiceRepository _repo = InvoiceRepositoryImpl(
    remoteDataSource: InvoiceRemoteDataSourceImpl(),
    localDataSource: InvoiceLocalDataSourceImpl(),
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => InvoiceCubit(_repo)),
      ],
      child: Scaffold(
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
        body: InvoiceDetailView(invoice),
      ),
    );
  }
}
