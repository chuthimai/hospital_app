import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/view_invoice/presentation/widgets/qr_code_payment_view.dart';
import 'package:hospital_app/share/utils/date_formatter.dart';
import '../../data/datasource/invoice_local_data_source.dart';
import '../../data/datasource/invoice_remote_data_source.dart';
import '../../data/repositories/invoice_repository_impl.dart';
import '../../domain/entities/invoice.dart';
import '../../domain/repositories/invoice_repository.dart';
import '../cubit/invoice_cubit.dart';
import '../widgets/qr_code_payment.dart';

class QrCodePaymentScreen extends StatelessWidget {
  final Invoice invoice;

  QrCodePaymentScreen(this.invoice, {super.key});

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
          title: const Text('Mã QR thanh toán'),
        ),
        body: SafeArea(
          child: Center(
            child: QrCodePaymentView(invoice),
          ),
        ),
      ),
    );
  }
}
