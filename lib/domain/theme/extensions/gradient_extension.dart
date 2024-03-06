import 'package:flutter/material.dart';

class AppGradients extends ThemeExtension<AppGradients> {
  final Gradient btnGradient;
  final Gradient background;
  final Gradient payBackground;
  final Gradient bronse;
  final Gradient silver;
  final Gradient platinum;
  final Gradient golden;
  final Gradient diamond;
  final Gradient titanium;
  final Gradient border;
  final Gradient darkGold;


  AppGradients({
    required this.btnGradient,
    required this.background,
    required this.payBackground,
    required this.bronse,
    required this.silver,
    required this.platinum,
    required this.border,
    required this.diamond,
    required this.golden,
    required this.titanium,
    required this.darkGold,
  });
  @override
  ThemeExtension<AppGradients> copyWith({
    Gradient? btnGradient,
    Gradient? background,
    Gradient? payBackground,
    Gradient? bronse,
    Gradient? silver,
    Gradient? platinum,
    Gradient? golden,
    Gradient? diamond,
    Gradient? titanium,
    Gradient? border,
    Gradient? darkGold,
  }) {
    return AppGradients(
      btnGradient: btnGradient ?? this.btnGradient,
      background: background ?? this.background,
      payBackground: payBackground ?? this.payBackground,
      bronse: bronse ?? this.bronse,
      silver: silver ?? this.silver,
      platinum: platinum ?? this.platinum,
      border: border ?? this.border,
      golden: golden ?? this.golden,
      diamond: diamond ?? this.diamond,
      titanium: titanium ?? this.titanium,
      darkGold: darkGold ?? this.darkGold,
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
      bronse: Gradient.lerp(bronse, other.bronse, t)!,
      silver: Gradient.lerp(silver, other.silver, t)!,
      platinum: Gradient.lerp(platinum, other.platinum, t)!,
      border: Gradient.lerp(border, other.border, t)!,
      diamond: Gradient.lerp(diamond, other.diamond, t)!,
      golden: Gradient.lerp(golden, other.golden, t)!,
      titanium: Gradient.lerp(titanium, other.titanium, t)!,
      darkGold: Gradient.lerp(darkGold, other.darkGold, t)!,
    );
  }
}
