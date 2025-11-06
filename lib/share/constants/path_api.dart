class PathApi {
  static const login = "/auth/login";

  /// Đặt lịch
  static const specializations = "/specializations";
  static const workSchedulesByPhysician = "/schedules/work-schedules-by-condition";
  static const searchPhysicianBySpecialty = "/users/physicians-by-specialty/";
  static const createAppointment = "/appointments";
  static const getAllAppointments = "/appointments/by-user";
  static const cancelAppointment = "/appointments/";

  /// Dịch vụ
  static const getAllIncompleteServices = "/billing/services-required";

  /// Đơn thuốc
  static const getAllPrescriptions = "/medicines/prescriptions";
  static const getDetailPrescription = "/medicines/prescriptions/";
}