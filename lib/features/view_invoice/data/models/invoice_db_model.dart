import 'package:isar/isar.dart';
import '../../domain/entities/enum/currencies.dart';
import '../../domain/entities/enum/invoice_status.dart';
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
}
