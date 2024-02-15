import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

class AuthBtns extends StatelessWidget {
  final void Function()? onTap;
  final Widget widget;
  final Color? color;
  const AuthBtns(
      {super.key, required this.onTap, required this.widget, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(
              vertical: Responsive.width(2.3, context), horizontal: Responsive.width(15.7, context)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Responsive.width(3.7, context)),
              color: color),
          child: widget),
    );
  }
}
