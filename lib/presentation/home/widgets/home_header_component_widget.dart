import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';

class HomeHeaderComponents extends StatelessWidget {
  final void Function()? onTap;
  final String label;
  final SvgPicture icon;
  const HomeHeaderComponents({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [icon, Text(label, style: typography.iconText)],
      ),
    );
  }
}
