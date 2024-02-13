import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/authentication/core/constants.dart';

class AuthVerificationAppbar extends StatelessWidget {
  const AuthVerificationAppbar({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    return AppBar(
      leading: ShaderMask(
        shaderCallback: (bounds) => gradients.btnGradient.createShader(bounds),
        child: IconButton(
            onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back)),
      ),
      title: ShaderMask(
          shaderCallback: (bounds) =>
              gradients.btnGradient.createShader(bounds),
          child:
              Text(authVerificationAppbarTitle, style: typography.appBarTitle)),
    );
  }
}
