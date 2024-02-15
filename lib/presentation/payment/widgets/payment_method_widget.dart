import 'package:flutter/material.dart';

import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';

class PaymentMethodContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final Image image;
  const PaymentMethodContainer({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    final gradients = AppTheme.of(context).gradients;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: Responsive.width(8, context),
          backgroundColor: colors.textField,
          child: image,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: typography.whiteUi),
            Text(subTitle, style: typography.discription),
          ],
        ),
        ShaderMask(
          shaderCallback: (bounds) =>
              gradients.btnGradient.createShader(bounds),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.navigate_next),
          ),
        )
      ],
    );
  }
}
