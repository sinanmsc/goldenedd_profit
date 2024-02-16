import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

class AuthVerificationHeader extends StatelessWidget {
  final String number;
  const AuthVerificationHeader({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    // final spaces = AppTheme.of(context).spaces;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShaderMask(
          shaderCallback: (bounds) =>
              gradients.btnGradient.createShader(bounds),
          child: Text(
            authVerificationHead,
            style: typography.authHead,
          ),
        ),
        SizedBox(height: Responsive.height(2.3, context)),
        Text(
          authVerificationSubHead,
          style: typography.ui,
        ),
        Text(
          '+91 8113905635',
          style: typography.number,
        ),
      ],
    );
  }
}
