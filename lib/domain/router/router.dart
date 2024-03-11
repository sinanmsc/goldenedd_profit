import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/presentation/authentication/auth_checker.dart';
import 'package:goldenegg_profit/presentation/wallet/wallet_page.dart';
import '../../application/add_kyc/bloc/add_kyc_bloc.dart';
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
import '../../presentation/deposit/deposit_payment_page.dart';
import '../../presentation/get_start/get_start_page.dart';
import '../../presentation/history/my_history_page.dart';
import '../../presentation/home/home_page.dart';
import '../../presentation/main_page/main_page.dart';
import '../../presentation/my_farm/my_farm_page.dart';
import '../../presentation/my_orders/my_orders_page.dart';
import '../../presentation/notification/notification_page.dart';
import '../../presentation/payment/add_new_card_page.dart';
import '../../presentation/payment/payment_page.dart';
import '../../presentation/profile/add_kyc_page.dart';
import '../../presentation/profile/edit_profile_page.dart';
import '../../presentation/profile/profile_page.dart';
import '../../presentation/referral/refferal_page.dart';
import '../../presentation/splash_screen/splash_screen.dart';
import '../../presentation/withdrawal/withdrawal_page.dart';
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
  static const String myCriptoPage = "/my_cripto";
  static const String addKycPage = "/add_kyc";
  static const String depositPayment = "/deposit_payment";
  static const String myOrders = "/my_orders";
  static const String myHistory = "/my_history";
  static const String refferal = "/refferal";
  static const String withdrawal = "/withdrawal";
  static const String wallet = "/wallet";
  static const String authChecker = "/auth_checker";
}

abstract class GetNamedRouts {
  static getRouts() {
    return {
      
      RoutPaths.authChecker: (context) => const AuthChecker(),
      RoutPaths.getStarted: (context) => BlocProvider(
            create: (context) => GetStartBloc(),
            child: const GetStart(),
          ),
      RoutPaths.authPage: (context) => BlocProvider(
            create: (context) => getIt<AuthBloc>(),
            child: AuthPage(),
          ),
      RoutPaths.authVerification: (context) => BlocProvider(
            create: (context) => getIt<AuthBloc>(),
            child: const AuthVerification(),
          ),
      RoutPaths.successfullRegistrationPage: (context) =>
          const SuccessfullRegistrationPage(),
      RoutPaths.profile: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => ProfileBloc()),
              BlocProvider(
                create: (context) => getIt<AuthBloc>(),
              )
            ],
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
      // RoutPaths.enterAmountPage: (context) => BlocProvider(
      //       create: (context) => PaymentBloc(),
      //       child: const EnterAmountPage(),
      //     ),
      RoutPaths.splashScreen: (context) => const SplashScreen(),
      RoutPaths.withdrawal: (context) => WithdrawalPage(),
      RoutPaths.myCriptoPage: (context) => const MyCripto(),
      RoutPaths.addKycPage: (context) => BlocProvider(
            create: (context) => AddKycBloc(),
            child: AddKyc(),
          ),
      RoutPaths.depositPayment: (context) => const DepositPayment(),
      RoutPaths.myOrders: (context) => const MyOrders(),
      RoutPaths.myHistory: (context) => const MyHistory(),
      RoutPaths.refferal: (context) => const RefferalPage(),
      RoutPaths.wallet: (context) => const WalletPage(),
    };
  }
}
