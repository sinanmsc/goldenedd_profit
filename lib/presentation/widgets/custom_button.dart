import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const CustomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    // final spaces = AppTheme.of(context).spaces;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: Responsive.width(2, context)),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: gradients.btnGradient,
          borderRadius: BorderRadius.circular(Responsive.width(5, context)),
        ),
        child: Text(text, style: typography.btn),
      ),
    );
  }
}
