import 'package:hospital_app/features/view_invoice/data/models/invoice_api_model.dart';
import 'package:hospital_app/features/view_invoice/data/models/invoice_db_model.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/enum/invoice_status.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/invoice.dart';

import 'package:hospital_app/share/utils/app_logger.dart';

import '../../domain/repositories/invoice_repository.dart';
import '../datasource/invoice_local_data_source.dart';
import '../datasource/invoice_remote_data_source.dart';

class InvoiceRepositoryImpl implements InvoiceRepository {
  final InvoiceRemoteDataSource _remoteDataSource;
  final InvoiceLocalDataSource _localDataSource;

  InvoiceRepositoryImpl({
    required remoteDataSource,
    required localDataSource,
  })
      : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

  @override
  Future<List<Invoice>> getAllInvoices() async {
    try {
      final invoicesApi = await _remoteDataSource.getAllInvoices();
      return invoicesApi.map((e) => e.toEntity()).toList();
    } catch (e) {
      AppLogger().error("Remote error: $e");
    }

    try {
      final invoicesDb = await _localDataSource.getAllInvoices();
      return await Future.wait(invoicesDb.map((e) => e.toEntity()).toList());
    } catch (e) {
      AppLogger().error("Local error: $e");
    }

    return [];
  }

  @override
  Future<Invoice?> getDetailInvoice(Invoice invoice) async {
    try {
      final invoiceDb = await _localDataSource
          .getDetailInvoice(InvoiceDbModel.fromEntity(invoice));
      if (invoiceDb != null) return invoiceDb.toEntity();
    } catch (e) {
      AppLogger().error("Local error: $e");
    }

    try {
      final invoiceApi = await _remoteDataSource.getDetailInvoice(
          InvoiceApiModel.fromEntity(invoice));
      final newInvoice = invoiceApi.toEntity();
      await saveInvoice(newInvoice);
      return newInvoice;
    } catch (e) {
      AppLogger().error("Remote error: $e");
    }
    return invoice;
  }

  @override
  Future<String> getQrCodeInvoice(Invoice invoice) async {
    if (invoice.status == InvoiceStatus.balanced) return "";
    try {
      return await _remoteDataSource.getQrCodeInvoice(InvoiceApiModel.fromEntity(invoice));
    } catch (e) {
      AppLogger().error("Remote data: $e");
      throw Exception("Lấy mã thanh toán thất bại");
    }
  }

  @override
  Future<void> saveInvoice(Invoice invoice) async {
    if (invoice.status != InvoiceStatus.balanced) return;
    try {
      _localDataSource.saveInvoice(invoice);
    } catch (e) {
      AppLogger().error("Local data: $e");
    }
  }
}
