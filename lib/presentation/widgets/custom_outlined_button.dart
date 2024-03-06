import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const CustomOutlinedButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(Responsive.width(0.5, context)),
        decoration: BoxDecoration(
          gradient: gradients.btnGradient,
          borderRadius: BorderRadius.circular(Responsive.width(6, context)),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: Responsive.width(2, context)),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFF1F1E1E),
            borderRadius: BorderRadius.circular(Responsive.width(6, context)),
          ),
          child: Text(title, style: typography.btnInvers),
        ),
      ),
    );
  }
}
