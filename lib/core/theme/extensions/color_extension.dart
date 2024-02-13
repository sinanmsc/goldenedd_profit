import 'package:flutter/material.dart';

class AppColor extends ThemeExtension<AppColor> {
  final Color primary;
  final Color inversePrimary;
  final Color textField;

  AppColor({required this.inversePrimary, required this.primary,required this.textField});

  @override
  ThemeExtension<AppColor> copyWith({Color? primary, Color? inversePrimary,Color? textField}) {
    return AppColor(
      primary: primary ?? this.primary,
      inversePrimary: inversePrimary ?? this.inversePrimary,
      textField: textField ?? this.textField,
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
    );
  }
}
