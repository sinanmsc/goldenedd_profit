import 'package:get_it/get_it.dart';
import 'package:goldenegg_profit/application/notification/bloc/notification_bloc.dart';
import 'package:goldenegg_profit/infrastructure/notifications/i_notification_repository.dart';

final getIt = GetIt.instance;

Future<void> setUp() async {
  getIt
    ..registerFactory(() => NotificationBloc(repository: getIt()))
    ..registerLazySingleton<INotificationRepository>(
        () => NotificatioRepositoryImpl());
}
