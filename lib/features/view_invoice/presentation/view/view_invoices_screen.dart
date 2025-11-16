import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/view_invoice/presentation/cubit/invoice_state.dart';

import '../../data/datasource/invoice_local_data_source.dart';
import '../../data/datasource/invoice_remote_data_source.dart';
import '../../data/repositories/invoice_repository_impl.dart';
import '../../domain/repositories/invoice_repository.dart';
import '../cubit/invoice_cubit.dart';
import '../widgets/invoices_list_view.dart';

class ViewInvoicesScreen extends StatelessWidget {
  ViewInvoicesScreen({super.key});

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
          title: const Text('Hoá đơn'),
        ),
        body: SafeArea(
          child: BlocBuilder<InvoiceCubit, InvoiceState>(
            builder: (context, state) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<InvoiceCubit>().getAllInvoices();
                },
                child: const InvoicesListView(),
              );
            }
          ),
        ),
      ),
    );
  }
}
