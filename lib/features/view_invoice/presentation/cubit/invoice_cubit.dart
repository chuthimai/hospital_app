import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/invoice.dart';
import '../../domain/repositories/invoice_repository.dart';
import 'invoice_state.dart';


class InvoiceCubit extends Cubit<InvoiceState> {
  final InvoiceRepository _repo;
  InvoiceCubit(this._repo): super(InvoiceInitial());

  Future<void> getAllInvoices() async {
    emit(InvoiceInitial());
    try {
      final invoices = await _repo.getAllInvoices();
      invoices.sort();
      emit(InvoiceGetAllSuccess(invoices));
    } catch(e) {
      emit(InvoiceGetAllFailure(e.toString()));
    }
  }

  Future<void> getDetailInvoice(Invoice invoice) async {
    emit(InvoiceInitial());
    try {
      final newInvoice = await _repo.getDetailInvoice(invoice);
      if (newInvoice != null) {
        emit(InvoiceGetDetailSuccess(newInvoice));
        return;
      }
      emit(InvoiceGetDetailFailure("Không có giá trị"));
    } catch(e) {
      emit(InvoiceGetDetailFailure(e.toString()));
    }
  }

  Future<void> getQrCodeInvoice(Invoice invoice) async {
    emit(InvoiceInitial());
    try {
      final qrCode = await _repo.getQrCodeInvoice(invoice);
      emit(InvoiceGetQrCodeSuccess(qrCode));
    } catch(e) {
      emit(InvoiceGetQrCodeFailure(e.toString()));
    }
  }
}