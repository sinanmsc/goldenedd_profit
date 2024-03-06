import 'package:flutter/material.dart';

import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';

class OutlinedContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final EdgeInsetsGeometry? padding;
  const OutlinedContainer({
    super.key,
    required this.child,
    this.padding,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    return Container(
      width: width,
      padding: EdgeInsets.all(Responsive.width(0.2, context)),
      decoration: BoxDecoration(
        gradient: gradients.btnGradient,
        borderRadius: BorderRadius.circular(Responsive.width(4, context)),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: padding,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFF181818),
          borderRadius: BorderRadius.circular(Responsive.width(4, context)),
        ),
        child: child,
      ),
    );
  }
}
