import 'package:flutter/material.dart';

class AppGradients extends ThemeExtension<AppGradients> {
  final Gradient btnGradient;

  AppGradients({required this.btnGradient});
  @override
  ThemeExtension<AppGradients> copyWith({Gradient? btnGradient}) {
    return AppGradients(btnGradient: btnGradient ?? this.btnGradient);
  }

  @override
  ThemeExtension<AppGradients> lerp(
      covariant ThemeExtension<ThemeExtension>? other, double t) {
    if (other is! AppGradients) {
      return this;
    }
    return AppGradients(
        btnGradient: Gradient.lerp(btnGradient, other.btnGradient, t)!);
  }
}
