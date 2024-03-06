import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

import '../../../domain/theme/theme_helper.dart';

class SellBtn extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const SellBtn({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: colors.sellbtn,
            fixedSize: Size(MediaQuery.sizeOf(context).width,
                Responsive.height(5, context))),
        child: Text(text,
            style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.white)));
  }
}
