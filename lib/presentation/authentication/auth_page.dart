import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/authentication/core/constants.dart';
import 'package:goldenegg_profit/presentation/authentication/auth_verification_page.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_appbar_widget.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/signin_register_widger.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_header_widget.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/signup_register_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  static const routerPath = '/auth_page';
  static const routerName = 'Auth Page';

  @override
  Widget build(BuildContext context) {
    final spaces = AppTheme.of(context).spaces;
    return Scaffold(
      appBar:
          const PreferredSize(preferredSize: Size(0, 50), child: AuthAppBar()),
      body: Padding(
        padding: EdgeInsets.all(spaces.space_250),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AuthHeader(),
            SizedBox(height: spaces.space_400),
            context.watch<AuthBloc>().state.isSigned
                ? const SignInRegisterWidget()
                : const SignUpRegisterWidget(),
            SizedBox(height: spaces.space_800),
            CustomButton(text: sendOtpBtnText,
              onTap: () => context.push(AuthVerification.routerPath),
            )
          ],
        ),
      ),
    );
  }
}
