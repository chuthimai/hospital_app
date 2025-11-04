import 'package:hospital_app/features/view_invoice/domain/entities/service_invoice.dart';

import '../entities/invoice.dart';

abstract class InvoiceRepository {
  Future<List<Invoice>> getAllInvoices();  // api + local
  Future<ServiceInvoice> getDetailInvoice(Invoice invoice);  // api + local
  Future<String> getQrCodeInvoice(Invoice invoice);  // api
  // Chỉ lưu invoice đã thanh toán
  Future<void> saveInvoice(Invoice invoice); // local
  Future<bool> isSavedInvoice(Invoice invoice); // local
}