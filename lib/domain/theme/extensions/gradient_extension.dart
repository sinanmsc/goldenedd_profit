import 'package:flutter/material.dart';

class AppGradients extends ThemeExtension<AppGradients> {
  final Gradient btnGradient;
  final Gradient background;

  AppGradients({required this.btnGradient,required this.background});
  @override
  ThemeExtension<AppGradients> copyWith({Gradient? btnGradient,Gradient? background}) {
    return AppGradients(btnGradient: btnGradient ?? this.btnGradient,background: background ?? this.background,);
  }

  @override
  ThemeExtension<AppGradients> lerp(
      covariant ThemeExtension<ThemeExtension>? other, double t) {
    if (other is! AppGradients) {
      return this;
    }
    return AppGradients(
        btnGradient: Gradient.lerp(btnGradient, other.btnGradient, t)!,
        background: Gradient.lerp(background, other.background, t)!,
        );
  }
}
