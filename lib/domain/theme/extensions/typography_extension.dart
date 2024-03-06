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
  final TextStyle title;
  final TextStyle subTitle;
  final TextStyle boldTitle;
  final TextStyle greenAmount;
  final TextStyle redAmount;
  final TextStyle greenSmall;
  final TextStyle redSmall;
  final TextStyle smallDiscription;
  final TextStyle discription;
  final TextStyle whiteUi;
  final TextStyle textField;
  final TextStyle bigGreen;
  final TextStyle bigRed;
  final TextStyle duckTitle;
  final TextStyle greenProfit;
  final TextStyle redLoss;
  final TextStyle semiBoldTitle;
  final TextStyle verySmallDiscription;
  final TextStyle paymentSucceful;
  final TextStyle title12;
  final TextStyle smallTime;
  final TextStyle purchaseDate;
  final TextStyle mainTitle;
  final TextStyle link;
  final TextStyle levelHead;
  final TextStyle withdrawalTextfieldHead;
  final TextStyle withdrawalTextfieldHintText;
  final TextStyle walletHead;
  final TextStyle walletAmount;

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
        ),
        link = const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
        greenAmount = const TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          color: Color(0xFF5ED5A8),
          fontSize: 16,
        ),
        redAmount = const TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
          color: Color(0xFFDD4B4B),
          fontSize: 16,
        ),
        greenSmall = const TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w400,
          color: Color(0xFF5ED5A8),
          fontSize: 12,
        ),
        redSmall = const TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w400,
          color: Color(0xFFDD4B4B),
          fontSize: 12,
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
        whiteUi = const TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
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
        textField = const TextStyle(
          color: Colors.white,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w600,
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
          fontWeight: FontWeight.w600,
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
        ),
        title12 = const TextStyle(
          fontFamily: 'poppins',
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
        title = const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          fontFamily: 'poppins',
        ),
        subTitle = const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          fontFamily: 'poppins',
        ),
        boldTitle = const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: 'poppins',
        ),
        semiBoldTitle = const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w700,
          fontFamily: 'poppins',
        ),
        smallDiscription = const TextStyle(
          fontSize: 11,
          fontFamily: 'poppins',
          color: Color(0xFF777777),
          fontWeight: FontWeight.w400,
        ),
        smallTime = const TextStyle(
          fontSize: 10,
          fontFamily: 'poppins',
          color: Color(0xFFB0B0B0),
          fontWeight: FontWeight.w300,
        ),
        discription = const TextStyle(
          fontSize: 13,
          fontFamily: 'poppins',
          color: Color(0xFF777777),
          fontWeight: FontWeight.w400,
        ),
        verySmallDiscription = const TextStyle(
          fontSize: 10,
          fontFamily: 'poppins',
          color: Color(0xFFFFFFFC),
          fontWeight: FontWeight.w400,
        ),
        bigGreen = const TextStyle(
          fontSize: 18,
          fontFamily: 'poppins',
          color: Color(0xFF55C64B),
          fontWeight: FontWeight.w600,
        ),
        bigRed = const TextStyle(
          fontSize: 18,
          fontFamily: 'poppins',
          color: Color(0xFFF43E32),
          fontWeight: FontWeight.w600,
        ),
        duckTitle = const TextStyle(
          fontSize: 15,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w400,
        ),
        greenProfit = const TextStyle(
          fontSize: 14,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w600,
          color: Color(0xFF55C64B),
        ),
        redLoss = const TextStyle(
          fontSize: 14,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w600,
          color: Color(0xFFF43E32),
        ),
        purchaseDate = const TextStyle(
          fontSize: 12,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w400,
          color: Color(0xFF777777),
        ),
        mainTitle = const TextStyle(
          fontSize: 15,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
        ),
        paymentSucceful = const TextStyle(
          fontSize: 13,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w500,
        ),
        withdrawalTextfieldHead = const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300,
          color: Color(0xFFD3CFCF),
        ),
        withdrawalTextfieldHintText = const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300,
          color: Color(0xFFB0B0B0),
        ),
        walletHead = const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
        ),
        walletAmount = const TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w700,
          color: Color(0xFF55C64B),
        ),
        levelHead = const TextStyle(
          fontSize: 17,
          fontFamily: 'poppins',
          fontWeight: FontWeight.w300,
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
    required this.title,
    required this.subTitle,
    required this.boldTitle,
    required this.greenAmount,
    required this.redAmount,
    required this.greenSmall,
    required this.redSmall,
    required this.smallDiscription,
    required this.discription,
    required this.whiteUi,
    required this.textField,
    required this.bigGreen,
    required this.bigRed,
    required this.duckTitle,
    required this.greenProfit,
    required this.redLoss,
    required this.semiBoldTitle,
    required this.verySmallDiscription,
    required this.paymentSucceful,
    required this.title12,
    required this.smallTime,
    required this.purchaseDate,
    required this.mainTitle,
    required this.link,
    required this.levelHead,
    required this.withdrawalTextfieldHintText,
    required this.withdrawalTextfieldHead,
    required this.walletAmount,
    required this.walletHead,
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
    TextStyle? title,
    TextStyle? subTitle,
    TextStyle? boldTitle,
    TextStyle? greenAmount,
    TextStyle? redAmount,
    TextStyle? greenSmall,
    TextStyle? redSmall,
    TextStyle? smallDiscription,
    TextStyle? discription,
    TextStyle? whiteUi,
    TextStyle? textField,
    TextStyle? bigGreen,
    TextStyle? bigRed,
    TextStyle? duckTitle,
    TextStyle? greenProfit,
    TextStyle? redLoss,
    TextStyle? semiBoldTitle,
    TextStyle? verySmallDiscription,
    TextStyle? paymentSucceful,
    TextStyle? title12,
    TextStyle? smallTime,
    TextStyle? purchaseDate,
    TextStyle? mainTitle,
    TextStyle? link,
    TextStyle? levelHead,
    TextStyle? withdrawalTextfieldHead,
    TextStyle? withdrawalTextfieldHintText,
    TextStyle? walletHead,
    TextStyle? walletAmount,
  }) {
    return AppTypographyExtension(
      small: small ?? this.small,
      getStartHead: getStartHead ?? this.getStartHead,
      btn: btn ?? this.btn,
      authBtn: authBtn ?? this.authBtn,
      authHead: authHead ?? this.authHead,
      uiInvers: uiInvers ?? this.uiInvers,
      ui: ui ?? this.ui,
      appBarTitle: appBarTitle ?? this.appBarTitle,
      number: number ?? this.number,
      bigWhite: bigWhite ?? this.bigWhite,
      name: name ?? this.name,
      btnInvers: btnInvers ?? this.btnInvers,
      iconText: iconText ?? this.iconText,
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      boldTitle: boldTitle ?? this.boldTitle,
      greenAmount: greenAmount ?? this.greenAmount,
      redAmount: redAmount ?? this.redAmount,
      greenSmall: greenSmall ?? this.greenSmall,
      redSmall: redSmall ?? this.redSmall,
      smallDiscription: smallDiscription ?? this.smallDiscription,
      discription: discription ?? this.discription,
      whiteUi: whiteUi ?? this.whiteUi,
      textField: textField ?? this.textField,
      bigGreen: bigGreen ?? this.bigGreen,
      bigRed: bigRed ?? this.bigRed,
      duckTitle: duckTitle ?? this.duckTitle,
      greenProfit: greenProfit ?? this.greenProfit,
      redLoss: redLoss ?? this.redLoss,
      semiBoldTitle: semiBoldTitle ?? this.semiBoldTitle,
      verySmallDiscription: verySmallDiscription ?? this.verySmallDiscription,
      paymentSucceful: paymentSucceful ?? this.paymentSucceful,
      title12: title12 ?? this.title12,
      smallTime: smallTime ?? this.smallTime,
      purchaseDate: purchaseDate ?? this.purchaseDate,
      mainTitle: mainTitle ?? this.mainTitle,
      link: link ?? this.link,
      levelHead: levelHead ?? this.levelHead,
      withdrawalTextfieldHead:
          withdrawalTextfieldHead ?? this.withdrawalTextfieldHead,
      withdrawalTextfieldHintText:
          withdrawalTextfieldHintText ?? this.withdrawalTextfieldHintText,
      walletAmount: walletAmount ?? this.walletAmount,
      walletHead: walletHead ?? this.walletHead,
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
      title: TextStyle.lerp(title, other.title, t)!,
      subTitle: TextStyle.lerp(subTitle, other.subTitle, t)!,
      boldTitle: TextStyle.lerp(boldTitle, other.boldTitle, t)!,
      greenAmount: TextStyle.lerp(greenAmount, other.greenAmount, t)!,
      redAmount: TextStyle.lerp(redAmount, other.redAmount, t)!,
      greenSmall: TextStyle.lerp(greenSmall, other.greenSmall, t)!,
      redSmall: TextStyle.lerp(redSmall, other.redSmall, t)!,
      smallDiscription:
          TextStyle.lerp(smallDiscription, other.smallDiscription, t)!,
      discription: TextStyle.lerp(discription, other.discription, t)!,
      whiteUi: TextStyle.lerp(whiteUi, other.whiteUi, t)!,
      textField: TextStyle.lerp(textField, other.textField, t)!,
      bigGreen: TextStyle.lerp(bigGreen, other.bigGreen, t)!,
      bigRed: TextStyle.lerp(bigRed, other.bigRed, t)!,
      duckTitle: TextStyle.lerp(duckTitle, other.duckTitle, t)!,
      greenProfit: TextStyle.lerp(greenProfit, other.greenProfit, t)!,
      redLoss: TextStyle.lerp(redLoss, other.redLoss, t)!,
      semiBoldTitle: TextStyle.lerp(semiBoldTitle, other.semiBoldTitle, t)!,
      verySmallDiscription:
          TextStyle.lerp(verySmallDiscription, other.verySmallDiscription, t)!,
      paymentSucceful:
          TextStyle.lerp(paymentSucceful, other.paymentSucceful, t)!,
      title12: TextStyle.lerp(title12, other.title12, t)!,
      smallTime: TextStyle.lerp(smallTime, other.smallTime, t)!,
      purchaseDate: TextStyle.lerp(purchaseDate, other.purchaseDate, t)!,
      mainTitle: TextStyle.lerp(mainTitle, other.mainTitle, t)!,
      link: TextStyle.lerp(link, other.link, t)!,
      levelHead: TextStyle.lerp(levelHead, other.levelHead, t)!,
      withdrawalTextfieldHead: TextStyle.lerp(
          withdrawalTextfieldHead, other.withdrawalTextfieldHead, t)!,
      withdrawalTextfieldHintText: TextStyle.lerp(
          withdrawalTextfieldHintText, other.withdrawalTextfieldHintText, t)!,
      walletAmount: TextStyle.lerp(walletAmount, other.walletAmount, t)!,
      walletHead: TextStyle.lerp(walletHead, other.walletHead, t)!,
    );
  }
}
