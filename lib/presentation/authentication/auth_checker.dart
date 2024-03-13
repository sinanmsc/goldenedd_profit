import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/get_start/get_start_bloc.dart';
import 'package:goldenegg_profit/application/main_page/bloc/main_page_bloc.dart';
import 'package:goldenegg_profit/presentation/get_start/get_start_page.dart';
import 'package:goldenegg_profit/presentation/main_page/main_page.dart';

class AuthChecker extends StatelessWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return BlocProvider(
            create: (context) => GetStartBloc(),
            child: GetStart(),
          );
        } else {
          return BlocProvider(
            create: (context) => MainPageBloc(),
            child: MainPage(),
          );
        }
      },
    );
  }
}
