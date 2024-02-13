import 'package:flutter/material.dart';

@immutable
class AppTypographyExtension extends ThemeExtension<AppTypographyExtension> {
  final TextStyle small;
  final TextStyle smallInverse;
  final TextStyle ui;
  final TextStyle getStartHead;
  final TextStyle btn;
  final TextStyle authBtn;
  final TextStyle authHead;
  final TextStyle appBarTitle;
  final TextStyle number;

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
        smallInverse = TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          color: Colors.grey[600],
          fontSize: 16,
          letterSpacing: 0,
        ),
        ui = const TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          color: Colors.grey,
          fontSize: 16,
          letterSpacing: 0,
        ),
        number = const TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          color: Color(0xFFFCBD68),
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
          fontWeight: FontWeight.w400,
        ),
        authHead = const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w900,
          fontFamily: 'poppins',
        ),
        appBarTitle = const TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          fontSize: 20,
        );

  /// Create the typography with given styles
  const AppTypographyExtension({
    required this.small,
    required this.getStartHead,
    required this.btn,
    required this.authBtn,
    required this.authHead,
    required this.ui,
    required this.smallInverse,
    required this.appBarTitle,
    required this.number,
  });

  @override
  ThemeExtension<AppTypographyExtension> copyWith({
    TextStyle? small,
    TextStyle? getStartHead,
    TextStyle? btn,
    TextStyle? authBtn,
    TextStyle? authHead,
    TextStyle? ui,
    TextStyle? smallInverse,
    TextStyle? appBarTitle,
    TextStyle? number,
  }) {
    return AppTypographyExtension(
      small: small ?? this.small,
      getStartHead: getStartHead ?? this.getStartHead,
      btn: btn ?? this.btn,
      authBtn: authBtn ?? this.authBtn,
      authHead: authHead ?? this.authHead,
      smallInverse: smallInverse ?? this.smallInverse,
      ui: ui ?? this.ui,
      appBarTitle: appBarTitle ?? this.appBarTitle,
      number: number ?? this.number,
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
      authHead: TextStyle.lerp(authHead, other.authHead, t)!,
      ui: TextStyle.lerp(ui, other.ui, t)!,
      smallInverse: TextStyle.lerp(smallInverse, other.smallInverse, t)!,
      appBarTitle: TextStyle.lerp(appBarTitle, other.appBarTitle, t)!,
      number: TextStyle.lerp(number, other.number, t)!,
    );
  }
}
