import 'package:hospital_app/features/view_invoice/domain/entities/service_invoice.dart';

import '../entities/invoice.dart';

abstract class InvoiceRepository {
  Future<List<Invoice>> getAllInvoices();  // api + local
  Future<List<Invoice>> getAllUnpaidInvoices();  // api
  Future<int> getFirstIdUnpaidInvoice();  // local
  Future<ServiceInvoice> getDetailInvoice(Invoice invoice);  // api
  Future<String> getQrCodeInvoice(Invoice invoice);  // api
  Future<void> saveInvoice(Invoice invoice);  // local
  Future<void> saveInvoices(List<Invoice> invoices);  // local
  Future<void> deleteAllInvoice();  // local
}