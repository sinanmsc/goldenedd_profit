import 'package:flutter/material.dart';
import 'package:goldenegg_profit/core/theme/color_palette/color_palette.dart';
import 'package:goldenegg_profit/core/theme/extensions/color_extension.dart';
import 'package:goldenegg_profit/core/theme/extensions/gradient_extension.dart';
import 'package:goldenegg_profit/core/theme/extensions/space_extension.dart';
import 'package:goldenegg_profit/core/theme/extensions/typography_extension.dart';

ThemeData theme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColorPalette.yellow,
    colorScheme: const ColorScheme.dark(),
    extensions: <ThemeExtension<dynamic>>[
      AppColor(
        primary: AppColorPalette.yellow,
        inversePrimary: AppColorPalette.yellowDark,
        textField: AppColorPalette.brown,
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
      )
    ]);
