class CreateAppointmentParams {
  final int workScheduleIdentifier;
  final int? physicianIdentifier;
  final int userIdentifier;

  CreateAppointmentParams({
    required this.workScheduleIdentifier,
    this.physicianIdentifier,
    required this.userIdentifier,
  });
}
