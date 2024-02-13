import 'package:flutter/material.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/authentication/core/constants.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_otp_widget.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_verification_appbar_widget.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_verification_header_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';

class AuthVerification extends StatelessWidget {
  const AuthVerification({super.key});

  static const routerPath = '/auth_verification';
  static const routerName = 'Auth Verification Page';

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    final spaces = AppTheme.of(context).spaces;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(0, 60), child: AuthVerificationAppbar()),
      body: Padding(
        padding: EdgeInsets.all(spaces.space_200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AuthVerificationHeader(),
            SizedBox(height: spaces.space_500),
            const OTPWidget(),
            SizedBox(height: spaces.space_500),
            Center(
              child: Column(children: [
                Text(
                  '$resendCodeTxt(30)',
                  style: typography.smallInverse,
                ),
                Text(
                  resendCodeLink,
                  style: typography.number,
                )
              ]),
            ),
            SizedBox(height: spaces.space_600),
            CustomButton(
              text: continueBtnText,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
