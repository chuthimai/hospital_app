import 'package:hospital_app/features/notification/domain/entities/notification.dart';

abstract class NotificationRepository {
  Future<List<Notification>> getAllNotifications();
  Future<void> updateNotification(Notification notification);
}