import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/notification/domain/repositories/notification_repository.dart';
import 'package:hospital_app/share/utils/app_logger.dart';

import 'dot_notification_state.dart';

class DotNotificationCubit extends Cubit<DotNotificationState> {
  final NotificationRepository repository;

  DotNotificationCubit(this.repository) : super(DotNotificationLoading());

  Future<void> checkUnread() async {
    try {
      emit(DotNotificationLoading());
      repository.hasNotReadNotification().listen(
            (hasUnread) {
          AppLogger().info("Has unread notification: $hasUnread");
          emit(DotNotificationUnreadState(hasUnread));
        },
        onError: (e) {
          emit(DotNotificationError(e.toString()));
        },
      );
    } catch (e) {
      emit(DotNotificationError(e.toString()));
    }
  }

}
