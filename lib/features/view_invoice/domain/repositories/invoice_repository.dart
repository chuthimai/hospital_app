import 'package:hospital_app/features/view_invoice/domain/entities/service_invoice.dart';

import '../entities/invoice.dart';

abstract class InvoiceRepository {
  Future<List<Invoice>> getAllInvoices();
  Future<ServiceInvoice> getDetailInvoice(Invoice invoice);
  Future<void> payInvoice(Invoice invoice);
  Future<void> deleteAllInvoice();
}