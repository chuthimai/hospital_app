class PathApi {
  static const login = "/auth/login?role=PATIENT";

  /// Đặt lịch
  static const specializations = "/specializations";
  static const workSchedulesByPhysician = "/schedules/work-schedules-by-condition";
  static const searchPhysicianBySpecialty = "/users/physicians-by-specialty/";
  static const createAppointment = "/appointments";
}