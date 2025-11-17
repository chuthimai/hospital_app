class CreateAppointmentParams {
  final int _workScheduleIdentifier;
  final int? _physicianIdentifier;
  final int _userIdentifier;

  CreateAppointmentParams({
    required int workScheduleIdentifier,
    int? physicianIdentifier,
    required int userIdentifier,
  })  : _workScheduleIdentifier = workScheduleIdentifier,
        _physicianIdentifier = physicianIdentifier,
        _userIdentifier = userIdentifier;

  int get workScheduleIdentifier => _workScheduleIdentifier;
  int? get physicianIdentifier => _physicianIdentifier;
  int get userIdentifier => _userIdentifier;
}
