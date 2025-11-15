import 'package:hospital_app/features/view_service/data/models/service_db_model.dart';
import 'package:hospital_app/share/db/isar_service.dart';
import 'package:isar/isar.dart';

import '../../domain/entities/invoice.dart';
import '../models/invoice_db_model.dart';
import '../models/service_invoice_db_model.dart';

abstract class InvoiceLocalDataSource {
  Future<List<InvoiceDbModel>> getAllInvoices();

  Future<InvoiceDbModel?> getDetailInvoice(InvoiceDbModel invoice);

  Future<void> saveInvoice(Invoice invoice);

  Future<void> deleteAllInvoices();
}

class InvoiceLocalDataSourceImpl implements InvoiceLocalDataSource {
  Future<Isar> get _isar async => await IsarService.instance;

  @override
  Future<List<InvoiceDbModel>> getAllInvoices() async {
    final isar = await _isar;
    return await isar.invoiceDbModels.where().findAll();
  }

  @override
  Future<InvoiceDbModel?> getDetailInvoice(
      InvoiceDbModel invoice) async {
    final isar = await _isar;
    return await isar.invoiceDbModels.get(invoice.id);
  }

  @override
  Future<void> saveInvoice(Invoice invoice) async {
    final isar = await _isar;

    await isar.writeTxn(() async {
      final invoiceDb = InvoiceDbModel.fromEntity(invoice);

      for (final serviceInvoice in invoice.serviceInvoices) {
        final serviceInvoiceDb =
            ServiceInvoiceDbModel.fromEntity(serviceInvoice);
        if (serviceInvoice.service != null) {
          await isar.serviceDbModels
              .put(ServiceDbModel.fromEntity(serviceInvoice.service!));
        }
        await isar.serviceInvoiceDbModels.put(serviceInvoiceDb);
        await serviceInvoiceDb.service.save();
      }

      await isar.invoiceDbModels.put(invoiceDb);
      await invoiceDb.serviceInvoices.save();
    });
  }

  @override
  Future<void> deleteAllInvoices() async {
    final isar = await _isar;
    await isar.writeTxn(() async {
      await isar.serviceInvoiceDbModels.clear();
      await isar.invoiceDbModels.clear();
    });
  }
}
