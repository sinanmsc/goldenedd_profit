import 'package:flutter/material.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';

class AuthBtns extends StatelessWidget {
  final void Function()? onTap;
  final Widget widget;
  final Color? color;
  const AuthBtns(
      {super.key, required this.onTap, required this.widget, this.color});

  @override
  Widget build(BuildContext context) {
    final spaces = AppTheme.of(context).spaces;
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(
              vertical: spaces.space_125, horizontal: spaces.space_100 * 8.5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(spaces.space_200),
              color: color),
          child: widget),
    );
  }
}
