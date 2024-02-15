import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';
import 'package:goldenegg_profit/domain/router/router.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
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
    return Scaffold(
      appBar:
          const PreferredSize(preferredSize: Size(0, 50), child: AuthAppBar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Responsive.width(4.6, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthHeader(),
              SizedBox(height: Responsive.height(4, context)),
              context.watch<AuthBloc>().state.isSigned
                  ? const SignInRegisterWidget()
                  : const SignUpRegisterWidget(),
              SizedBox(height: Responsive.height(8.5, context)),
              CustomButton(
                text: sendOtpBtnText,
                onTap: () => Navigator.pushNamed(context, RoutPaths.authVerification),
              )
            ],
          ),
        ),
      ),
    );
  }
}
