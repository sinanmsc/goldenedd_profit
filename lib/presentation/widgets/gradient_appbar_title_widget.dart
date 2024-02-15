import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';

class GradientAppbarTitle extends StatelessWidget {
  final String titleText;
  const GradientAppbarTitle({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    return ShaderMask(
        shaderCallback: (bounds) => gradients.btnGradient.createShader(bounds),
        child: Text(titleText, style: typography.appBarTitle));
  }
}
