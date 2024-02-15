import 'package:flutter/material.dart';

import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import 'gradient_appbar_title_widget.dart';
import 'gradient_arrow_widget.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  const CustomAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;

    return Container(
      padding: EdgeInsets.symmetric(vertical: Responsive.width(3.7, context)),
      decoration: BoxDecoration(
        gradient: gradients.background,
      ),
      child:  Row(
        children: [
          const GradientArrowWidget(),
          GradientAppbarTitle(titleText: title)
        ],
      ),
    );
  }
}
