import 'package:flutter/material.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/authentication/core/constants.dart';

class AuthVerificationHeader extends StatelessWidget {
  const AuthVerificationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    final spaces = AppTheme.of(context).spaces;
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
        SizedBox(height: spaces.space_200),
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
