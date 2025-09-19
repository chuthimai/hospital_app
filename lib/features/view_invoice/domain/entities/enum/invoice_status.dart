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
