import 'package:flutter/material.dart';

import '../../domain/constants/my_farm_constants.dart';
import '../../domain/theme/theme_helper.dart';

class DollerWidget extends StatelessWidget {
  final double fontSize;
  const DollerWidget({
    super.key, required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return ShaderMask(
        shaderCallback: (bounds) => gradients.btnGradient.createShader(bounds),
        child: Text(
          doller,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            fontFamily: 'poppins',
          ),
        ));
  }
}
