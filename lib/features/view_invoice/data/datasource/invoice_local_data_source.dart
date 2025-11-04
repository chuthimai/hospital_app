
import '../models/invoice_db_model.dart';
import '../models/service_invoice_db_model.dart';

abstract class InvoiceLocalDataSource {
  Future<List<InvoiceDbModel>> getAllInvoices();
  Future<ServiceInvoiceDbModel> getDetailInvoice(InvoiceDbModel invoice);
  Future<void> saveInvoice(InvoiceDbModel invoice);
  Future<bool> isSavedInvoice(InvoiceDbModel invoice);
}