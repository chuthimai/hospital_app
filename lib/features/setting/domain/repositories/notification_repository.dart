abstract class NotificationRepository {
  Future<bool> isTurnOnNotification();
  Future<void> switchNotification(bool isTurnOnNotification);
}