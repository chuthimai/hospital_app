import 'enum/currencies.dart';
import 'enum/invoice_status.dart';
import 'service_invoice.dart';

class Invoice implements Comparable<Invoice> {
  final int id;
  final Currencies currency;
  final InvoiceStatus status;
  final DateTime? createdTime;
  List<ServiceInvoice> _serviceInvoices;

  Invoice({
    required this.id,
    this.currency = Currencies.VND,
    this.status = InvoiceStatus.issued,
    this.createdTime,
    List<ServiceInvoice>? serviceInvoices,
  }) : _serviceInvoices = serviceInvoices ?? [];

  List<ServiceInvoice> get serviceInvoices => _serviceInvoices;
  set serviceInvoices(List<ServiceInvoice>? invoices) {
    _serviceInvoices = invoices ?? [];
  }

  double get totalGross =>
      _serviceInvoices.fold(0.0, (sum, serviceInvoice) => sum + serviceInvoice.price);

  @override
  int compareTo(Invoice other) {
    if (status == InvoiceStatus.issued && other.status != InvoiceStatus.issued) {
      return -1;
    }
    if (status != InvoiceStatus.issued && other.status == InvoiceStatus.issued) {
      return 1;
    }
    return other.id.compareTo(id);
  }

  
}
