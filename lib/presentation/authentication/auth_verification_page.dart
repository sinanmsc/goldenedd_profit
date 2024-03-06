import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';
import 'package:goldenegg_profit/domain/injectable/injectable.dart';
import 'package:goldenegg_profit/presentation/authentication/successfull_registration_page.dart';

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
  final otp1 = TextEditingController();
  final otp2 = TextEditingController();
  final otp3 = TextEditingController();
  final otp4 = TextEditingController();

  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (context.read<AuthBloc>().state.resendOtpTime != 0) {
        context.read<AuthBloc>().add(const AuthEvent.resendOtp());
      } else {
        timer.cancel();
      }
      // log('abc ' + context.read<AuthBloc>().state.mobileNo);
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
              BlocBuilder<AuthBloc, AuthState>(
                bloc: getIt<AuthBloc>(),
                builder: (context, state) {
                  if (state.mobileNo.isEmpty) {
                    log('message');
                  }
                  log(' a : ' + state.mobileNo);
                  return AuthVerificationHeader();
                },
              ),
              SizedBox(height: Responsive.height(5.8, context)),
              // const OTPWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OTPTextField(first: true, last: false, controller: otp1),
                  OTPTextField(first: false, last: false, controller: otp2),
                  OTPTextField(first: false, last: false, controller: otp3),
                  OTPTextField(first: false, last: true, controller: otp4),
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
                  time == 0
                      ? Text(
                          resendCodeLink,
                          style: typography.number,
                        )
                      : const SizedBox()
                ]),
              ),
              SizedBox(height: Responsive.height(6.95, context)),
              CustomButton(
                text: continueBtnText,
                onTap: () {
                  if (otp1.text.length +
                          otp2.text.length +
                          otp3.text.length +
                          otp4.text.length !=
                      4) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Invalid OTP')));
                  } else {
                    if (isSigned.value) {
                      Navigator.pushNamed(
                          context, RoutPaths.successfullRegistrationPage);
                    } else {
                      Navigator.pushNamedAndRemoveUntil(context,
                          RoutPaths.mainPage, (Route<dynamic> route) => false);
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
