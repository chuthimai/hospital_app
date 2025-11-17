import 'enum/currencies.dart';
import 'enum/invoice_status.dart';
import 'service_invoice.dart';

class Invoice implements Comparable<Invoice> {
  final int _id;
  final Currencies _currency;
  final InvoiceStatus _status;
  final DateTime? _createdTime;
  List<ServiceInvoice> _serviceInvoices;

  Invoice({
    required int id,
    Currencies currency = Currencies.VND,
    InvoiceStatus status = InvoiceStatus.issued,
    DateTime? createdTime,
    List<ServiceInvoice>? serviceInvoices,
  }) : _id = id,
        _currency = currency,
        _status = status,
        _createdTime = createdTime,
        _serviceInvoices = serviceInvoices ?? [];

  int get id => _id;
  Currencies get currency => _currency;
  InvoiceStatus get status => _status;
  DateTime? get createdTime => _createdTime;
  List<ServiceInvoice> get serviceInvoices => _serviceInvoices;

  set serviceInvoices(List<ServiceInvoice>? invoices) {
    _serviceInvoices = invoices ?? [];
  }

  double get totalGross =>
      _serviceInvoices.fold(0.0, (sum, serviceInvoice) => sum + serviceInvoice.price);

  @override
  int compareTo(Invoice other) {
    if (_status == InvoiceStatus.issued && other._status != InvoiceStatus.issued) {
      return -1;
    }
    if (_status != InvoiceStatus.issued && other._status == InvoiceStatus.issued) {
      return 1;
    }
    return other._id.compareTo(_id);
  }
}