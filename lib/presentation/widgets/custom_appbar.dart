import 'package:flutter/material.dart';

import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import 'gradient_appbar_title_widget.dart';
import 'gradient_arrow_widget.dart';

class CustomAppbar extends StatelessWidget {
  final bool isNeedBackButton;
  final void Function()? onPressed;
  final String title;
  const CustomAppbar(
      {super.key,
      required this.title,
      this.onPressed,
      required this.isNeedBackButton});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;

    return Container(
      padding: EdgeInsets.symmetric(vertical: Responsive.width(3.7, context)),
      decoration: BoxDecoration(
        gradient: gradients.background,
      ),
      child: Row(
        children: [
          isNeedBackButton
              ? GradientArrowWidget(
                  onPressed: onPressed,
                )
              : SizedBox(width: Responsive.width(3, context)),
          GradientAppbarTitle(titleText: title)
        ],
      ),
    );
  }
}
