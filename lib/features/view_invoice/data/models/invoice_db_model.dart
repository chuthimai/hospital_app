import 'package:isar/isar.dart';
import '../../domain/entities/enum/currencies.dart';
import '../../domain/entities/enum/invoice_status.dart';
import '../../domain/entities/invoice.dart';
import 'service_invoice_db_model.dart';

part 'invoice_db_model.g.dart';

@collection
class InvoiceDbModel {
  Id id;

  @enumerated
  late Currencies currency;

  @enumerated
  late InvoiceStatus status;

  DateTime? createdTime;

  final serviceInvoices = IsarLinks<ServiceInvoiceDbModel>();

  InvoiceDbModel({
    required this.id,
    required this.currency,
    required this.status,
    this.createdTime,
  });

  /// Convert DB model -> Domain entity
  Future<Invoice> toEntity() async {
    await serviceInvoices.load();
    return Invoice(
      id: id,
      currency: currency,
      status: status,
      createdTime: createdTime,
      serviceInvoices: await Future.wait(serviceInvoices
          .map((serviceInvoice) => serviceInvoice.toEntity())
          .toList()),
    );
  }

  /// Convert Domain entity -> DB model
  static InvoiceDbModel fromEntity(Invoice entity) {
    final model = InvoiceDbModel(
      id: entity.id,
      currency: entity.currency,
      status: entity.status,
      createdTime: entity.createdTime,
    );

    // Gắn link tới danh sách serviceInvoices
    model.serviceInvoices.addAll(
      entity.serviceInvoices
          .map((e) => ServiceInvoiceDbModel.fromEntity(e))
          .toList(),
    );

    return model;
  }
}
