import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CustomOutlinedButton extends StatelessWidget {
  final void Function() onTap;
  const CustomOutlinedButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;

    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: Responsive.width(2, context)),
        width: double.infinity,
        decoration: BoxDecoration(
          border: GradientBoxBorder(gradient: gradients.btnGradient),
          borderRadius: BorderRadius.circular(Responsive.width(6, context)),
        ),
        child: Text(cancelBtn, style: typography.btnInvers),
      ),
    );
  }
}
