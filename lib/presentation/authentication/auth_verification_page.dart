import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/authentication/successfull_registration_page.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_otp_widget.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_verification_header_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';
import 'package:goldenegg_profit/presentation/widgets/gradient_appbar_title_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/gradient_arrow_widget.dart';

class AuthVerification extends StatelessWidget {
  const AuthVerification({super.key});

  static const routerPath = '/auth_verification';
  static const routerName = 'Auth Verification Page';

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
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
              const AuthVerificationHeader(),
              SizedBox(height: Responsive.height(5.8, context)),
              const OTPWidget(),
              SizedBox(height: Responsive.height(5.8, context)),
              Center(
                child: Column(children: [
                  Text(
                    '$resendCodeTxt(30)',
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
                onTap: () =>
                    context.push(SuccessfullRegistrationPage.routerPath),
              )
            ],
          ),
        ),
      ),
    );
  }
}
