abstract class FollowupAppointmentRepository {
  Future<List<FollowupAppointmentRepository>> getFollowupAppointments();
  Future<void> deleteAllFollowupAppointments();
}