/// AppointmentStatus - trạng thái cuộc hẹn (FHIR)
/// CodeSystem: http://hl7.org/fhir/appointmentstatus
enum AppointmentStatus {
  booked,
  cancelled,
  checkedIn,
}

extension AppointmentStatusVi on AppointmentStatus {
  String toVietnamese() {
    switch (this) {
      case AppointmentStatus.booked:
        return "Đã đặt lịch";
      case AppointmentStatus.cancelled:
        return "Đã hủy";
      case AppointmentStatus.checkedIn:
        return "Đã check-in";
    }
  }
}
