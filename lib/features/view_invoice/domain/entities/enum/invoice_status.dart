/// InvoiceStatus - trạng thái hóa đơn (FHIR)
/// CodeSystem: http://hl7.org/fhir/invoice-status
enum InvoiceStatus {
  draft,
  issued,
  balanced,
  cancelled,
  enteredInError,
}

extension InvoiceStatusVi on InvoiceStatus {
  /// Trả về mô tả tiếng Việt cho từng trạng thái
  String toVietnamese() {
    switch (this) {
      case InvoiceStatus.draft:
        return "Bản nháp";
      case InvoiceStatus.issued:
        return "Chưa thanh toán";
      case InvoiceStatus.balanced:
        return "Đã thanh toán";
      case InvoiceStatus.cancelled:
        return "Đã hủy";
      case InvoiceStatus.enteredInError:
        return "Không hợp lệ";
    }
  }
}

extension InvoiceStatusParser on InvoiceStatus {
  static InvoiceStatus fromString(String value) {
    switch (value) {
      case "draft":
        return InvoiceStatus.draft;
      case "issued":
        return InvoiceStatus.issued;
      case "balanced":
        return InvoiceStatus.balanced;
      case "cancelled":
        return InvoiceStatus.cancelled;
      case "enteredInError":
        return InvoiceStatus.enteredInError;
      default:
        return InvoiceStatus.issued;
    }
  }
}

