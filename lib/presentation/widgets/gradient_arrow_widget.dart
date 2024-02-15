import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';

class GradientArrowWidget extends StatelessWidget {
  const GradientArrowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    return ShaderMask(
      shaderCallback: (bounds) => gradients.btnGradient.createShader(bounds),
      child: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back)),
    );
  }
}
