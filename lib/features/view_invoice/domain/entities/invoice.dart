import 'package:hospital_app/features/view_invoice/domain/entities/enum/currencies.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/enum/invoice_status.dart';
import 'package:isar/isar.dart';

import 'service_invoice.dart';

class Invoice {
  final int id;
  final Currencies currency;
  final InvoiceStatus status;
  final DateTime createdTime;
  final List<ServiceInvoice> serviceInvoices;
  final double? _totalGross;

  Invoice({
    required this.id,
    this.currency = Currencies.VND,
    this.status = InvoiceStatus.issued,
    required this.createdTime,
    this.serviceInvoices = const [],
    double? totalGross,
  }) : _totalGross = totalGross;

  double get totalGross =>
      _totalGross ??
      serviceInvoices.fold(
          0.0, (sum, serviceInvoice) => sum + serviceInvoice.price);
}
