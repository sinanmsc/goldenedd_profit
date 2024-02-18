import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/authentication/bloc/auth_bloc.dart';
import '../../application/get_start/get_start_bloc.dart';
import '../../application/main_page/bloc/main_page_bloc.dart';
import '../../application/notification/bloc/notification_bloc.dart';
import '../../application/payment/bloc/payment_bloc.dart';
import '../../application/profile/bloc/profile_bloc.dart';
import '../../presentation/authentication/auth_page.dart';
import '../../presentation/authentication/auth_verification_page.dart';
import '../../presentation/authentication/successfull_registration_page.dart';
import '../../presentation/deposit/deposit_page.dart';
import '../../presentation/get_start/get_start_page.dart';
import '../../presentation/home/home_page.dart';
import '../../presentation/main_page/main_page.dart';
import '../../presentation/notification/notification_page.dart';
import '../../presentation/payment/add_new_card_page.dart';
import '../../presentation/payment/enter_amount_page.dart';
import '../../presentation/payment/payment_page.dart';
import '../../presentation/profile/edit_profile_page.dart';
import '../../presentation/profile/profile_page.dart';
import '../../presentation/splash_screen/splash_screen.dart';
import '../injectable/injectable.dart';

mixin RoutPaths {
  static const String splashScreen = "/splash_screen";
  static const String getStarted = "/get_start";
  static const String authPage = "/auth_page";
  static const String authVerification = "/authVerification";
  static const String successfullRegistrationPage = "/success_registration";
  static const String profile = "/profile";
  static const String editProfile = "/edit_profile";
  static const String home = "/home";
  static const String mainPage = "/main_page";
  static const String notification = "/notification";
  static const String deposit = "/deposit";
  static const String payment = "/payment";
  static const String addCardPage = "/add_card";
  static const String enterAmountPage = "/enter_amount";
}

abstract class GetNamedRouts {
  static getRouts() {
    return {
      RoutPaths.getStarted: (context) => BlocProvider(
            create: (context) => GetStartBloc(),
            child: const GetStart(),
          ),
      RoutPaths.authPage: (context) => BlocProvider(
            create: (context) => AuthBloc(),
            child: AuthPage(),
          ),
      RoutPaths.authVerification: (context) => BlocProvider(
            create: (context) => AuthBloc(),
            child: const AuthVerification(),
          ),
      RoutPaths.successfullRegistrationPage: (context) =>
          const SuccessfullRegistrationPage(),
      RoutPaths.profile: (context) => BlocProvider(
            create: (context) => ProfileBloc(),
            child: const Profile(),
          ),
      RoutPaths.editProfile: (context) => BlocProvider(
            create: (context) => ProfileBloc(),
            child: EditProfile(),
          ),
      RoutPaths.home: (context) => const HomePage(),
      RoutPaths.mainPage: (context) => BlocProvider(
            create: (context) => MainPageBloc(),
            child: const MainPage(),
          ),
      RoutPaths.notification: (context) => BlocProvider(
            create: (context) => getIt<NotificationBloc>(),
            child: const NotificationPage(),
          ),
      RoutPaths.deposit: (context) => const DepositPage(),
      RoutPaths.payment: (context) => const PaymentPage(),
      RoutPaths.addCardPage: (context) => BlocProvider(
            create: (context) => PaymentBloc(),
            child: AddNewCard(),
          ),
      RoutPaths.enterAmountPage: (context) => BlocProvider(
            create: (context) => PaymentBloc(),
            child: const EnterAmountPage(),
          ),
      RoutPaths.splashScreen: (context) => const SplashScreen(),
    };
  }
}
