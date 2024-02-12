import 'package:go_router/go_router.dart';
import 'package:goldenegg_profit/presentation/authentication/auth_page.dart';
import 'package:goldenegg_profit/presentation/get_start/get_start_page.dart';

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
      builder: (context, state) => const AuthPage(),
    )
  ]);
}
