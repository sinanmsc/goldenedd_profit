import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';
import 'package:goldenegg_profit/application/get_start/get_start_bloc.dart';
import 'package:goldenegg_profit/core/router/router.dart';
import 'package:goldenegg_profit/core/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetStartBloc()),
        BlocProvider(create: (context) => AuthBloc())
      ],
      child: MaterialApp.router(
        routerConfig: RouterGo.router,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme,
      ),
    );
  }
}
