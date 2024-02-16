import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/get_start/get_start_bloc.dart';
import 'package:goldenegg_profit/domain/injectable/injectable.dart';
import 'package:goldenegg_profit/domain/router/router.dart';
import 'package:goldenegg_profit/domain/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUp();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class FlutterLocalNotificationsPlugin {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetStartBloc(),
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
