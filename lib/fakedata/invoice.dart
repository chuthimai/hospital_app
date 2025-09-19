import 'package:hospital_app/fakedata/service.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/enum/currencies.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/enum/invoice_status.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/invoice.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/service_invoice.dart';

/// Fake invoices
late final List<Invoice> fakeInvoices;

void initFakeInvoices() {
  final invoice1 = Invoice(
    id: 1,
    currency: Currencies.VND,
    totalGross: 0.0, // sẽ tính lại sau
    status: InvoiceStatus.issued,
    createdTime: DateTime(2025, 9, 15, 12, 0),
    serviceInvoices: [],
  );

  final invoice2 = Invoice(
    id: 2,
    currency: Currencies.VND,
    totalGross: 0.0,
    status: InvoiceStatus.balanced,
    createdTime: DateTime(2025, 9, 17, 16, 30),
    serviceInvoices: [],
  );

  // Gắn serviceInvoices cho invoice1
  final services1 = [
    ServiceInvoice(
      id: 101,
      invoice: invoice1,
      service: fakeServices[0], // Khám nội tổng quát
      price: 150000.0,
    ),
    ServiceInvoice(
      id: 102,
      invoice: invoice1,
      service: fakeServices[4], // Xét nghiệm máu tổng quát
      price: 250000.0,
    ),
  ];
  invoice1.serviceInvoices.addAll(services1);

  // Gắn serviceInvoices cho invoice2
  final services2 = [
    ServiceInvoice(
      id: 201,
      invoice: invoice2,
      service: fakeServices[7], // Chụp CT Scanner sọ não
      price: 1500000.0
    ),
    ServiceInvoice(
      id: 202,
      invoice: invoice2,
      service: fakeServices[9], // Chụp MRI cột sống thắt lưng
      price: 3000000.0
    ),
  ];
  invoice2.serviceInvoices.addAll(services2);

  fakeInvoices = [invoice1, invoice2];
}
