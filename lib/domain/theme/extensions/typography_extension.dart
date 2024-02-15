import 'package:flutter/material.dart';

@immutable
class AppTypographyExtension extends ThemeExtension<AppTypographyExtension> {
  final TextStyle small;
  final TextStyle uiInvers;
  final TextStyle ui;
  final TextStyle getStartHead;
  final TextStyle btn;
  final TextStyle btnInvers;
  final TextStyle authBtn;
  final TextStyle authHead;
  final TextStyle appBarTitle;
  final TextStyle number;
  final TextStyle bigWhite;
  final TextStyle name;
  final TextStyle iconText;

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
        uiInvers = TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          color: Colors.grey[600],
          fontSize: 14,
          letterSpacing: 0,
        ),
        ui = TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          color: Colors.grey[400],
          fontSize: 14,
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
        btnInvers = TextStyle(
          color: defaultFontColor,
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
        ),
        bigWhite = const TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        name = const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          fontFamily: 'poppins',
        ),
        iconText = const TextStyle(
          fontFamily: 'poppins',
          fontSize: 12,
          fontWeight: FontWeight.w400,
        );

  /// Create the typography with given styles
  const AppTypographyExtension({
    required this.small,
    required this.getStartHead,
    required this.btn,
    required this.authBtn,
    required this.authHead,
    required this.ui,
    required this.uiInvers,
    required this.appBarTitle,
    required this.number,
    required this.bigWhite,
    required this.name,
    required this.btnInvers,
    required this.iconText,
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
    TextStyle? bigWhite,
    TextStyle? name,
    TextStyle? btnInvers,
    TextStyle? iconText,
  }) {
    return AppTypographyExtension(
      small: small ?? this.small,
      getStartHead: getStartHead ?? this.getStartHead,
      btn: btn ?? this.btn,
      authBtn: authBtn ?? this.authBtn,
      authHead: authHead ?? this.authHead,
      uiInvers: smallInverse ?? this.uiInvers,
      ui: ui ?? this.ui,
      appBarTitle: appBarTitle ?? this.appBarTitle,
      number: number ?? this.number,
      bigWhite: bigWhite ?? this.bigWhite,
      name: name ?? this.name,
      btnInvers: btnInvers ?? this.btnInvers,
      iconText: iconText ?? this.iconText,
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
      uiInvers: TextStyle.lerp(uiInvers, other.uiInvers, t)!,
      appBarTitle: TextStyle.lerp(appBarTitle, other.appBarTitle, t)!,
      number: TextStyle.lerp(number, other.number, t)!,
      bigWhite: TextStyle.lerp(bigWhite, other.bigWhite, t)!,
      name: TextStyle.lerp(name, other.name, t)!,
      btnInvers: TextStyle.lerp(btnInvers, other.btnInvers, t)!,
      iconText: TextStyle.lerp(iconText, other.iconText, t)!,
    );
  }
}
