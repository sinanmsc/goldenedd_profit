import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';
import 'package:goldenegg_profit/application/main_page/bloc/main_page_bloc.dart';
import 'package:goldenegg_profit/domain/models/profile_model.dart';
import 'package:goldenegg_profit/presentation/authentication/auth_page.dart';
import 'package:goldenegg_profit/presentation/authentication/auth_verification_page.dart';
import 'package:goldenegg_profit/presentation/authentication/successfull_registration_page.dart';
import 'package:goldenegg_profit/presentation/get_start/get_start_page.dart';
import 'package:goldenegg_profit/presentation/home/home_page.dart';
import 'package:goldenegg_profit/presentation/main_page/main_page.dart';
import 'package:goldenegg_profit/presentation/profile/edit_profile_page.dart';
import 'package:goldenegg_profit/presentation/profile/profile_page.dart';

class RouterGo {
  static final router = GoRouter(initialLocation: GetStart.routerPath, routes: [
    GoRoute(
      path: GetStart.routerPath,
      name: GetStart.routerName,
      builder: (context, state) => const GetStart(),
    ),
    GoRoute(
      path: AuthPage.routerPath,
      name: AuthPage.routerName,
      builder: (context, state) => BlocProvider(
        create: (context) => AuthBloc(),
        child: const AuthPage(),
      ),
    ),
    GoRoute(
      path: AuthVerification.routerPath,
      name: AuthVerification.routerName,
      builder: (context, state) => const AuthVerification(),
    ),
    GoRoute(
      path: SuccessfullRegistrationPage.routerPath,
      name: SuccessfullRegistrationPage.routerName,
      builder: (context, state) => const SuccessfullRegistrationPage(),
    ),
    GoRoute(
      path: Profile.routerPath,
      name: Profile.routerName,
      builder: (context, state) => const Profile(),
    ),
    GoRoute(
      path: EditProfile.routerPath,
      name: EditProfile.routerName,
      builder: (context, state) =>
          EditProfile(profileModel: state.extra as ProfileModel),
    ),
    GoRoute(
      path: HomePage.routerPath,
      name: HomePage.routerName,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: MainPage.routerPath,
      name: MainPage.routerName,
      builder: (context, state) => BlocProvider(
        create: (context) => MainPageBloc(),
        child: const MainPage(),
      ),
    ),
  ]);
}
