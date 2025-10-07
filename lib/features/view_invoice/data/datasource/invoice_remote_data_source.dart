import '../models/invoice_api_model.dart';
import '../models/service_invoice_api_model.dart';

abstract class InvoiceRemoteDataSource {
  Future<List<InvoiceApiModel>> getAllInvoices();
  Future<ServiceInvoiceApiModel> getDetailInvoice(InvoiceApiModel invoice);
  Future<String> getQrCodeInvoice(InvoiceApiModel invoice);
}

class InvoiceRemoteDataSourceImpl implements InvoiceRemoteDataSource {
  @override
  Future<List<InvoiceApiModel>> getAllInvoices() {
    // TODO: implement getAllInvoices
    throw UnimplementedError();
  }

  @override
  Future<ServiceInvoiceApiModel> getDetailInvoice(InvoiceApiModel invoice) {
    // TODO: implement getDetailInvoice
    throw UnimplementedError();
  }

  @override
  Future<String> getQrCodeInvoice(InvoiceApiModel invoice) {
    // TODO: implement getQrCodeInvoice
    throw UnimplementedError();
  }

}