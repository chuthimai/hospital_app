import 'package:hospital_app/share/constants/path_api.dart';
import 'package:hospital_app/share/dio/remote_service.dart';
import 'package:hospital_app/share/utils/app_exception/api_error_handler.dart';

import '../models/invoice_api_model.dart';

abstract class InvoiceRemoteDataSource {
  Future<List<InvoiceApiModel>> getAllInvoices();

  Future<InvoiceApiModel> getDetailInvoice(InvoiceApiModel invoice);

  Future<String> getQrCodeInvoice(InvoiceApiModel invoice);
}

class InvoiceRemoteDataSourceImpl implements InvoiceRemoteDataSource {
  @override
  Future<List<InvoiceApiModel>> getAllInvoices() async {
    try {
      final remote = RemoteService();
      final response = await remote.get(PathApi.getAllInvoices);

      final data = response.data as List<dynamic>;
      final invoices = data
          .map((json) =>
              InvoiceApiModel.fromJson(json as Map<String, dynamic>))
          .toList();

      return invoices;
    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      throw error;
    }
  }

  @override
  Future<InvoiceApiModel> getDetailInvoice(InvoiceApiModel invoice) async {
    try {
      final remote = RemoteService();
      final response = await remote.get(
        PathApi.getDetailInvoice + invoice.identifier.toString(),
      );
      final data = response.data as Map<String, dynamic>;
      return InvoiceApiModel.fromJson(data);

    } catch (e) {
      final error = ApiErrorHandler.handle(e);
      throw error;
    }
  }

  @override
  Future<String> getQrCodeInvoice(InvoiceApiModel invoice) {
    // TODO: implement getQrCodeInvoice
    throw UnimplementedError();
  }
}
