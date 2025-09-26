
import 'enum/currencies.dart';
import 'enum/invoice_status.dart';
import 'service_invoice.dart';

class Invoice {
  final int id;
  final Currencies currency;
  final InvoiceStatus status;
  final DateTime? createdTime;
  final List<ServiceInvoice> serviceInvoices;

  Invoice({
    required this.id,
    this.currency = Currencies.VND,
    this.status = InvoiceStatus.issued,
    this.createdTime,
    this.serviceInvoices = const [],
  });

  double get totalGross =>
      serviceInvoices.fold(
          0.0, (sum, serviceInvoice) => sum + serviceInvoice.price);
}
