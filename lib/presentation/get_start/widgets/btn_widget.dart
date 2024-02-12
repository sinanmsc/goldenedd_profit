import 'package:flutter/material.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/get_start/core/constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final spaces = AppTheme.of(context).spaces;
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: spaces.space_700, vertical: spaces.space_125),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(spaces.space_600),
        gradient:gradients.btnGradient
      ),
      child: Text(getStartbtnText, style: typography.btn),
    );
  }
}
