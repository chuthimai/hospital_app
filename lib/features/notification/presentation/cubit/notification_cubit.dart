import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/notification/domain/repositories/notification_repository.dart';

import '../../domain/entities/app_notification.dart';
import 'notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  final NotificationRepository repository;
  StreamSubscription<bool>? _subscription;

  NotificationCubit(this.repository) : super(NotificationLoading());

  Future<void> loadNotifications() async {
    await _subscription?.cancel();
    emit(NotificationLoading());
    repository.getAllNotifications().listen(
          (notifications) {
        emit(NotificationLoaded(notifications));
      },
      onError: (e) {
        emit(NotificationError(e.toString()));
      },
    );
  }

  Future<void> markRead(AppNotification notification) async {
    await repository.markReadNotification(notification);
  }

  Future<void> markReadAll() async {
    await repository.markReadNotifications();
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
