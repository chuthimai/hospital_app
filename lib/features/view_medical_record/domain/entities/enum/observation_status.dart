/// FHIR ObservationStatus
/// CodeSystem: http://hl7.org/fhir/observation-status
enum ObservationStatus {
  registered,
  preliminary,
  final_,
  amended,
  corrected,
  cancelled,
  enteredInError,
  unknown,
}

extension ObservationStatusVi on ObservationStatus {
  String toVietnamese() {
    switch (this) {
      case ObservationStatus.registered:
        return "Đã ghi nhận (chưa hoàn tất)";
      case ObservationStatus.preliminary:
        return "Kết quả sơ bộ";
      case ObservationStatus.final_:
        return "Kết quả cuối cùng";
      case ObservationStatus.amended:
        return "Đã chỉnh sửa sau phát hành";
      case ObservationStatus.corrected:
        return "Đã sửa lỗi";
      case ObservationStatus.cancelled:
        return "Đã hủy";
      case ObservationStatus.enteredInError:
        return "Nhập nhầm (không hợp lệ)";
      case ObservationStatus.unknown:
        return "Không xác định";
    }
  }
}
