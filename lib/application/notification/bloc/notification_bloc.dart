import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goldenegg_profit/domain/exception/base_exception.dart';

import '../../../domain/models/notification/notification_model.dart';
import '../../../infrastructure/notifications/i_notification_repository.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final INotificationRepository repository;
  NotificationBloc({required this.repository})
      : super(NotificationState.initial()) {
    on<_GetNotifications>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        final data = await repository.getNotifications();
        emit(state.copyWith(isLoading: false, notifications: data));
      } on BaseException catch (e) {
        emit(state.copyWith(errorMsg: e.message, isLoading: false));
      }
    });
  }
}
