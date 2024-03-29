import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/color_palette/color_palette.dart';
import 'package:goldenegg_profit/domain/theme/extensions/color_extension.dart';
import 'package:goldenegg_profit/domain/theme/extensions/gradient_extension.dart';
import 'package:goldenegg_profit/domain/theme/extensions/space_extension.dart';
import 'package:goldenegg_profit/domain/theme/extensions/typography_extension.dart';

ThemeData theme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColorPalette.yellow,
    colorScheme: const ColorScheme.dark(),
    extensions: <ThemeExtension<dynamic>>[
      AppColor(
        primary: AppColorPalette.yellow,
        inversePrimary: AppColorPalette.yellowDark,
        textField: AppColorPalette.brown,
        bg: AppColorPalette.yellowShade,
        darkAppbar: AppColorPalette.dark,
        iconBg: AppColorPalette.yellowbrown,
        darkBg: AppColorPalette.dartGrey,
        completed: AppColorPalette.green,
        failed: AppColorPalette.red,
        sellbtn: AppColorPalette.btnGreen,
      ),
      AppSpaceExtension.fromBaseSpace(8),
      AppTypographyExtension.fromColors(
        defaultFontColor: Colors.grey[100]!,
        linkColor: Colors.blue,
        dimFontColor: Colors.grey[800]!,
      ),
      AppGradients(
        btnGradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFFD9A51E),
            Color(0xFFF3EEB3),
            Color(0xFFD4951A),
          ],
        ),
        darkGold: const LinearGradient(colors: [
          Color(0xFFF9B860),
          Color(0xFFB37A1B),
        ]),
        background: const LinearGradient(
          colors: [
            Color.fromARGB(111, 25, 25, 25),
            Color(0x524D3A13),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 0.9],
        ),
        payBackground: LinearGradient(colors: [
          const Color(0xFFF9B860).withOpacity(0.6),
          const Color(0xFFB37A1B).withOpacity(0.6)
        ]),
        bronse: const LinearGradient(
            colors: [Color(0xFF8442FF), Color(0xFF4918E1)]),
        silver: const LinearGradient(
            colors: [Color(0xFF41C6FF), Color(0xFF1665E1)]),
        golden: const LinearGradient(
            colors: [Color(0xFFF9B860), Color(0xFFB37A1B)]),
        diamond: const LinearGradient(
            colors: [Color(0xFF42A4FF), Color(0xFF7DE118)]),
        titanium: const LinearGradient(
            colors: [Color(0xFF5142FF), Color(0xFFE118C1)]),
        platinum: const LinearGradient(
            colors: [Color(0xFFFF4BAA), Color(0xFFE1601F)]),
        border: const LinearGradient(
            colors: [Color(0xFFD9A51E), Color(0xFFF3EEB3), Color(0xFFD4951A)]),
      )
    ]);
