import 'package:hospital_app/fakedata/service.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/enum/currencies.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/enum/invoice_status.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/invoice.dart';
import 'package:hospital_app/features/view_invoice/domain/entities/service_invoice.dart';

/// Fake invoices
final List<Invoice> fakeInvoices = [
  Invoice(
    id: 1,
    currency: Currencies.VND,
    // sẽ tính lại sau
    status: InvoiceStatus.issued,
    createdTime: DateTime(2025, 9, 15, 12, 0),
    serviceInvoices: [
      ServiceInvoice(
        id: 101,
        service: fakeServices[0], // Khám nội tổng quát
        price: 150000.0,
      ),
      ServiceInvoice(
        id: 102,
        service: fakeServices[4], // Xét nghiệm máu tổng quát
        price: 250000.0,
      ),
    ],
  ),
  Invoice(
    id: 2,
    currency: Currencies.VND,
    status: InvoiceStatus.balanced,
    createdTime: DateTime(2025, 9, 17, 16, 30),
    serviceInvoices: [
      ServiceInvoice(
          id: 201,
          service: fakeServices[7], // Chụp CT Scanner sọ não
          price: 1500000.0),
      ServiceInvoice(
          id: 202,
          service: fakeServices[9], // Chụp MRI cột sống thắt lưng
          price: 3000000.0),
    ],
  ),
];
