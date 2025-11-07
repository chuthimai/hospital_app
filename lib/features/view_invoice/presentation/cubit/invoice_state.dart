import '../../domain/entities/invoice.dart';

abstract class InvoiceState {}

class InvoiceInitial extends InvoiceState {}

class InvoiceGetAllSuccess extends InvoiceState {
  final List<Invoice> invoices;
  InvoiceGetAllSuccess(this.invoices);
}

class InvoiceGetAllFailure extends InvoiceState {
  final String message;
  InvoiceGetAllFailure(String message)
      : message = message.replaceFirst("Exception: ", "");
}

class InvoiceGetDetailSuccess extends InvoiceState {
  final Invoice invoice;

  InvoiceGetDetailSuccess(this.invoice);
}

class InvoiceGetDetailFailure extends InvoiceState {
  final String message;
  InvoiceGetDetailFailure(String message)
      : message = message.replaceFirst("Exception: ", "");
}

class InvoiceGetQrCodeSuccess extends InvoiceState {
  final String code;

  InvoiceGetQrCodeSuccess(this.code);
}

class InvoiceGetQrCodeFailure extends InvoiceState {
  final String message;
  InvoiceGetQrCodeFailure(String message)
      : message = message.replaceFirst("Exception: ", "");
}
