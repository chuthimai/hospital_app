import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_app/features/notification/domain/repositories/notification_repository.dart';

import 'dot_notification_state.dart';

class DotNotificationCubit extends Cubit<DotNotificationState> {
  final NotificationRepository repo;
  StreamSubscription<bool>? _subscription;

  DotNotificationCubit(this.repo) : super(DotNotificationLoading());

  Future<void> checkUnread() async {
    await _subscription?.cancel();
    try {
      emit(DotNotificationLoading());
      _subscription = repo.hasNotReadNotification().listen(
            (hasUnread) {
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

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
