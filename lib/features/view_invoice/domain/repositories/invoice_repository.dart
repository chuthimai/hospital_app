import '../entities/invoice.dart';

abstract class InvoiceRepository {
  Future<List<Invoice>> getAllInvoices();  // api + local
  Future<Invoice?> getDetailInvoice(Invoice invoice);  // api + local
  Future<String> getQrCodeInvoice(Invoice invoice);  // api
  // Chỉ lưu invoice đã thanh toán và đã xem
  Future<void> saveInvoice(Invoice invoice); // local
}