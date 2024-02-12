import 'package:flutter/material.dart';

@immutable
class AppTypographyExtension extends ThemeExtension<AppTypographyExtension> {
  final TextStyle small;
  final TextStyle getStartHead;
  final TextStyle btn;
  final TextStyle authBtn;

  /// Create the default style values
  AppTypographyExtension.fromColors({
    required Color defaultFontColor,
    required Color linkColor,
    required Color dimFontColor,
  })  : small = TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          color: dimFontColor,
          fontSize: 16,
          letterSpacing: 0,
        ),
        getStartHead = TextStyle(
          color: defaultFontColor,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
        btn = const TextStyle(
          color: Color(0xFF2B200F),
          fontFamily: 'poppins',
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        authBtn = const TextStyle(
            color: Color(0xFF2B200F),
            fontSize: 14,
            fontWeight: FontWeight.w400);

  /// Create the typography with given styles
  const AppTypographyExtension({
    required this.small,
    required this.getStartHead,
    required this.btn,
    required this.authBtn,
  });

  @override
  ThemeExtension<AppTypographyExtension> copyWith({
    TextStyle? small,
    TextStyle? getStartHead,
    TextStyle? btn,
    TextStyle? authBtn,
  }) {
    return AppTypographyExtension(
      small: small ?? this.small,
      getStartHead: getStartHead ?? this.getStartHead,
      btn: btn ?? this.btn,
      authBtn: authBtn ?? this.authBtn,
    );
  }

  @override
  ThemeExtension<AppTypographyExtension> lerp(
      covariant ThemeExtension<AppTypographyExtension>? other, double t) {
    if (other is! AppTypographyExtension) {
      return this;
    }
    return AppTypographyExtension(
      small: TextStyle.lerp(small, other.small, t)!,
      getStartHead: TextStyle.lerp(getStartHead, other.getStartHead, t)!,
      btn: TextStyle.lerp(btn, other.btn, t)!,
      authBtn: TextStyle.lerp(authBtn, other.authBtn, t)!,
    );
  }
}
