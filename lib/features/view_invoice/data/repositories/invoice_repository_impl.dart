import 'package:hospital_app/features/view_invoice/domain/entities/invoice.dart';

import 'package:hospital_app/features/view_invoice/domain/entities/service_invoice.dart';

import '../../domain/repositories/invoice_repository.dart';

class InvoiceRepositoryImpl implements InvoiceRepository {
  @override
  Future<List<Invoice>> getAllInvoices() {
    // TODO: implement getAllInvoices
    throw UnimplementedError();
  }

  @override
  Future<ServiceInvoice> getDetailInvoice(Invoice invoice) {
    // TODO: implement getDetailInvoice
    throw UnimplementedError();
  }

  @override
  Future<String> getQrCodeInvoice(Invoice invoice) {
    // TODO: implement getQrCodeInvoice
    throw UnimplementedError();
  }

  @override
  Future<void> saveInvoice(Invoice invoice) {
    // TODO: implement saveInvoice
    throw UnimplementedError();
  }

  @override
  Future<bool> isSavedInvoice(Invoice invoice) {
    // TODO: implement isSavedInvoice
    throw UnimplementedError();
  }

}