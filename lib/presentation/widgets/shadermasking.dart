import 'package:flutter/material.dart';

class CustomShaderMask extends StatelessWidget {
  final Gradient gradient;
  final Widget child;
  const CustomShaderMask({
    super.key,
    required this.gradient,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(bounds),
      child: child,
    );
  }
}

ValueNotifier<String> paymentScreenshot = ValueNotifier('');
