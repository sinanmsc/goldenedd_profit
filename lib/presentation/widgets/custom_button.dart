import 'package:flutter/material.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const CustomButton({super.key, required this.onTap,required this.text});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    final spaces = AppTheme.of(context).spaces;
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: spaces.space_150),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: gradients.btnGradient,
          borderRadius: BorderRadius.circular(spaces.space_300),
        ),
        child: Text(text, style: typography.btn),
      ),
    );
  }
}
