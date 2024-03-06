import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/constants/getstart_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  const ButtonWidget({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    // final spaces = AppTheme.of(context).spaces;
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.width(13, context),
          vertical: Responsive.width(2.3, context)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Responsive.width(11, context)),
          gradient: gradients.btnGradient),
      child: Text(title, style: typography.btn),
    );
  }
}
