import 'package:flutter/material.dart';

class AppColor extends ThemeExtension<AppColor> {
  final Color primary;
  final Color inversePrimary;
  final Color textField;
  final Color bg;
  final Color darkAppbar;
  final Color iconBg;
  final Color darkBg;
  final Color completed;
  final Color failed;
  final Color sellbtn;

  AppColor({
    required this.inversePrimary,
    required this.primary,
    required this.textField,
    required this.bg,
    required this.darkAppbar,
    required this.iconBg,
    required this.darkBg,
    required this.completed,
    required this.failed,
    required this.sellbtn,
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
    Color? completed,
    Color? failed,
    Color? sellbtn,
  }) {
    return AppColor(
      primary: primary ?? this.primary,
      inversePrimary: inversePrimary ?? this.inversePrimary,
      textField: textField ?? this.textField,
      bg: bg ?? this.bg,
      darkAppbar: darkAppbar ?? this.darkAppbar,
      iconBg: iconBg ?? this.iconBg,
      darkBg: darkBg ?? this.darkBg,
      completed: completed ?? this.completed,
      failed: failed ?? this.failed,
      sellbtn: sellbtn ?? this.sellbtn,
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
      completed: Color.lerp(completed, other.completed, t)!,
      failed: Color.lerp(failed, other.failed, t)!,
      sellbtn: Color.lerp(sellbtn, other.sellbtn, t)!,
    );
  }
}
