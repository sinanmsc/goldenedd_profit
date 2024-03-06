import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';

class GradientArrowWidget extends StatelessWidget {
  final void Function()? onPressed;
  const GradientArrowWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    return ShaderMask(
      shaderCallback: (bounds) => gradients.btnGradient.createShader(bounds),
      child: IconButton(
          onPressed: () {
            if (onPressed != null) {
              log('message');
              onPressed!();
            } else {
              Navigator.pop(context);
            }
          },
          icon: const Icon(Icons.arrow_back)),
    );
  }
}
