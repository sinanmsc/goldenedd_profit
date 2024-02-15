import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';

class HomeHeaderComponents extends StatelessWidget {
  final String label;
  final String icon;
  const HomeHeaderComponents({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    return Column(
      children: [Image.asset(icon), Text(label, style: typography.iconText)],
    );
  }
}
