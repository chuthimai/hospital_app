import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/setting/domain/repositories/notification_setting_repository.dart';
import 'package:hospital_app/share/notification/push_notification_service.dart';

class NotificationSettingCubit extends Cubit<bool> {
  final NotificationSettingRepository repo;
  NotificationSettingCubit(this.repo) : super(true);

  Future<void> getCurrentNotificationState() async {
    final isEnabled = await repo.getNotificationEnabled();
    emit(isEnabled);
  }

  void switchNotificationState() async {
    final newState = !state;
    emit(newState);
    await repo.setNotificationEnabled(newState);

    if (newState) {
      await PushNotificationService.enableNotifications();
    } else {
      await PushNotificationService.disableNotifications();
    }
  }
}