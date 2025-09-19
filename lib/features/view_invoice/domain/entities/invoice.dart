import 'package:hospital_app/features/view_invoice/domain/entities/enum/currencies.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/enum/invoice_status.dart';
import 'package:isar/isar.dart';

class Invoice {
  final int id;
  final Currencies currency;
  final float totalGross;
  final InvoiceStatus status;
  final DateTime createdTime;

  Invoice({
    required this.id,
    this.currency = Currencies.VND,
    required this.totalGross,
    this.status = InvoiceStatus.issued,
    required this.createdTime,
  });
}
