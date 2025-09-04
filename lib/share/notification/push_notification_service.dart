import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_app/features/notification/domain/entities/app_notification.dart';
import 'package:hospital_app/features/notification/domain/repositories/notification_repository.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import 'local_notification_service.dart';

class PushNotificationService {
  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  static late BuildContext _context;
  static late NotificationRepository _notificationRepository;

  /// Hàm khởi tạo service
  static Future<void> init({
    required BuildContext context,
    required NotificationRepository repository,
  }) async {
    _context = context;
    _notificationRepository = repository;

    // Handler cho background
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // In ra token (dùng để gửi từ Firebase Console hoặc server)
    final token = await _messaging.getToken();
    AppLogger().info("FCM Token: $token");

    // Foreground messages
    FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;
      if (notification != null) {
        LocalNotificationService.showNotification(
          title: notification.title ?? "Thông báo",
          body: notification.body ?? "",
        );

        _saveMessageToLocal(message);
      }
    });

    // Khi user click vào notification
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      _saveMessageToLocal(message);
      _navigateToNotification();
    });

    // Nếu app mở từ trạng thái terminated qua notification
    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      _saveMessageToLocal(initialMessage);
      _navigateToNotification();
    }
  }

  // Background handler
  static Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    AppLogger().info("Background message: ${message.messageId}");
    _saveMessageToLocal(message);
  }

  // Điều hướng tới màn hình thông báo
  static void _navigateToNotification() {
    _context.push("/notifications");
  }

  static void _saveMessageToLocal(RemoteMessage message) {
    final notification = message.notification;
    if (notification != null) {
      final newNotification = AppNotification(
        title: notification.title ?? "Thông báo",
        body: notification.body ?? "",
        timestamp: DateTime.now(),
        isRead: false,
      );
      _notificationRepository.saveNotification(newNotification);
    }
  }
}
