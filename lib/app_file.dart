import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';
import 'package:goldenegg_profit/application/main_page/bloc/main_page_bloc.dart';
import 'package:goldenegg_profit/application/notification/bloc/notification_bloc.dart';
import 'package:goldenegg_profit/application/payment/bloc/payment_bloc.dart';
import 'package:goldenegg_profit/application/profile/bloc/profile_bloc.dart';
import 'package:goldenegg_profit/domain/injectable/injectable.dart';
import 'package:goldenegg_profit/presentation/main_page/main_page.dart';
import 'package:goldenegg_profit/presentation/profile/profile_page.dart';

import 'application/get_start/get_start_bloc.dart';
import 'domain/router/router.dart';
import 'domain/theme/theme.dart';

class FlutterLocalNotificationsPlugin {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetStartBloc()),
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => MainPageBloc()),
        BlocProvider(create: (context) => getIt<NotificationBloc>()),
        BlocProvider(create: (context) => PaymentBloc()),
        BlocProvider(create: (context) => ProfileBloc()),
      ],
      // create: ,
      child: MaterialApp(
        routes: GetNamedRouts.getRouts(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme,
        initialRoute: RoutPaths.splashScreen,
      ),
    );
  }
}
