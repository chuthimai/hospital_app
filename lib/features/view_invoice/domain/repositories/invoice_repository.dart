import 'package:hospital_app/features/view_invoice/domain/entities/service_invoice.dart';

import '../entities/invoice.dart';

abstract class InvoiceRepository {
  Future<List<Invoice>> getAllInvoices();  // api
  Future<ServiceInvoice> getDetailInvoice(Invoice invoice);  // api
  Future<String> getQrCodeInvoice(Invoice invoice);  // api
}