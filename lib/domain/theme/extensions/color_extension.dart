import 'package:flutter/material.dart';

class AppColor extends ThemeExtension<AppColor> {
  final Color primary;
  final Color inversePrimary;
  final Color textField;
  final Color bg;
  final Color darkAppbar;
  final Color iconBg;
  final Color darkBg;

  AppColor({
    required this.inversePrimary,
    required this.primary,
    required this.textField,
    required this.bg,
    required this.darkAppbar,
    required this.iconBg,
    required this.darkBg
  });

  @override
  ThemeExtension<AppColor> copyWith({
    Color? primary,
    Color? inversePrimary,
    Color? textField,
    Color? bg,
    Color? darkAppbar,
    Color? iconBg,
    Color? darkBg,
  }) {
    return AppColor(
      primary: primary ?? this.primary,
      inversePrimary: inversePrimary ?? this.inversePrimary,
      textField: textField ?? this.textField,
      bg: bg ?? this.bg,
      darkAppbar: darkAppbar ?? this.darkAppbar,
      iconBg: iconBg ?? this.iconBg,
      darkBg: darkBg ?? this.darkBg,
    );
  }

  @override
  ThemeExtension<AppColor> lerp(
      covariant ThemeExtension<AppColor>? other, double t) {
    if (other is! AppColor) {
      return this;
    }
    return AppColor(
      primary: Color.lerp(primary, other.primary, t)!,
      inversePrimary: Color.lerp(inversePrimary, other.inversePrimary, t)!,
      textField: Color.lerp(textField, other.textField, t)!,
      bg: Color.lerp(bg, other.bg, t)!,
      darkAppbar: Color.lerp(darkAppbar, other.darkAppbar, t)!,
      iconBg: Color.lerp(iconBg, other.iconBg, t)!,
      darkBg: Color.lerp(darkBg, other.darkBg, t)!,
    );
  }
}
