import 'package:flutter/material.dart';

class AppGradients extends ThemeExtension<AppGradients> {
  final Gradient btnGradient;
  final Gradient background;
  final Gradient payBackground;
  final Gradient blue;
  final Gradient greean;
  final Gradient red;

  AppGradients({
    required this.btnGradient,
    required this.background,
    required this.payBackground,
    required this.blue,
    required this.greean,
    required this.red,
  });
  @override
  ThemeExtension<AppGradients> copyWith({
    Gradient? btnGradient,
    Gradient? background,
    Gradient? payBackground,
    Gradient? blue,
    Gradient? greean,
    Gradient? red,
  }) {
    return AppGradients(
      btnGradient: btnGradient ?? this.btnGradient,
      background: background ?? this.background,
      payBackground: payBackground ?? this.payBackground,
      blue: blue ?? this.blue,
      greean: greean ?? this.greean,
      red: red ?? this.red,
    );
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
      payBackground: Gradient.lerp(payBackground, other.payBackground, t)!,
      blue: Gradient.lerp(blue, other.blue, t)!,
      greean: Gradient.lerp(greean, other.greean, t)!,
      red: Gradient.lerp(red, other.red, t)!,
    );
  }
}
