import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';

import '../../domain/constants/auth_constants.dart';
import '../../domain/router/router.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_button.dart';
import '../widgets/gradient_appbar_title_widget.dart';
import '../widgets/gradient_arrow_widget.dart';
import 'widgets/auth_verification_header_widget.dart';
import 'widgets/otp_textfield.dart';

class AuthVerification extends StatefulWidget {
  const AuthVerification({super.key});

  static const routerPath = '/auth_verification';
  static const routerName = 'Auth Verification Page';

  @override
  State<AuthVerification> createState() => _AuthVerificationState();
}

class _AuthVerificationState extends State<AuthVerification> {
  late Timer timer;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (context.read<AuthBloc>().state.resendOtpTime != 0) {
        context.read<AuthBloc>().add(const AuthEvent.resendOtp());
      } else {
        timer.cancel();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(context.read<AuthBloc>().state.mobileNo);
    final typography = AppTheme.of(context).typography;
    final time = context.watch<AuthBloc>().state.resendOtpTime;
    return Scaffold(
      appBar: AppBar(
        leading: const GradientArrowWidget(),
        title:
            const GradientAppbarTitle(titleText: authVerificationAppbarTitle),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Responsive.width(3.7, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthVerificationHeader(
                number: context.read<AuthBloc>().state.mobileNo,
              ),
              SizedBox(height: Responsive.height(5.8, context)),
              // const OTPWidget(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OTPTextField(),
                  OTPTextField(),
                  OTPTextField(),
                  OTPTextField(),
                ],
              ),
              SizedBox(height: Responsive.height(5.8, context)),
              Center(
                child: Column(children: [
                  time == 0
                      ? const SizedBox()
                      : Text(
                          '$resendCodeTxt($time)',
                          style: typography.uiInvers,
                        ),
                  Text(
                    resendCodeLink,
                    style: typography.number,
                  )
                ]),
              ),
              SizedBox(height: Responsive.height(6.95, context)),
              CustomButton(
                text: continueBtnText,
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context,
                    RoutPaths.successfullRegistrationPage,
                    (Route<dynamic> route) => false),
              )
            ],
          ),
        ),
      ),
    );
  }
}
