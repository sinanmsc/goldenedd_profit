import 'package:flutter/material.dart';

import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';

class ForwardButton extends StatelessWidget {
  const ForwardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    return Container(
      decoration: BoxDecoration(
          gradient: gradients.btnGradient,
          borderRadius: BorderRadius.circular(Responsive.width(4.5, context))),
      child: SizedBox(
        width: Responsive.width(12, context),
        height: Responsive.height(6, context),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
      ),
    );
  }
}
