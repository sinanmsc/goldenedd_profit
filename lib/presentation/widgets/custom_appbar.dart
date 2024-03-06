import 'package:flutter/material.dart';

import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import 'gradient_appbar_title_widget.dart';
import 'gradient_arrow_widget.dart';

class CustomAppbar extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const CustomAppbar({super.key, required this.title, this.onPressed});

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
           GradientArrowWidget(onPressed:onPressed,),
          GradientAppbarTitle(titleText: title)
        ],
      ),
    );
  }
}
