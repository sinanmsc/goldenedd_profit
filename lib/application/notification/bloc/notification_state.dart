part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  factory NotificationState({
    required List<NotificationModel>? notifications,
    required bool isLoading,
    required String? errorMsg,
  }) = _NotificationModel;
  factory NotificationState.initial() {
    return NotificationState(
        notifications: null, isLoading: false, errorMsg: null);
  }
}
