import 'package:get_it/get_it.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';
import 'package:goldenegg_profit/application/authverification/bloc/otp_bloc.dart';
import 'package:goldenegg_profit/application/notification/bloc/notification_bloc.dart';
import 'package:goldenegg_profit/application/profile/bloc/profile_bloc.dart';
import 'package:goldenegg_profit/infrastructure/notifications/i_notification_repository.dart';

final getIt = GetIt.instance;

Future<void> setUp() async {
  getIt
    ..registerFactory(() => NotificationBloc(repository: getIt()))
    ..registerLazySingleton<INotificationRepository>(
        () => NotificatioRepositoryImpl())
    // ..registerFactory(() => AuthBloc())
    ..registerFactory(() => ProfileBloc())
    ..registerFactory(() => OtpBloc());

  getIt.registerSingleton(AuthBloc());
}
