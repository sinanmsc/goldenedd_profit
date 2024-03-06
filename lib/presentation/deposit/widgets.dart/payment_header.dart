import 'package:flutter/material.dart';

import '../../../domain/constants/payment_constents.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';
import '../../widgets/doller_widget.dart';
import '../../widgets/shadermasking.dart';

class PaymentHead extends StatelessWidget {
  final String title;
  const PaymentHead({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: typography.name),
            const DollerWidget(fontSize: 18)
          ],
        ),
        SizedBox(height: Responsive.height(2, context)),
        CustomShaderMask(
            gradient: gradients.darkGold,
            child: Text(paymentSubTitle, style: typography.subTitle)),
      ],
    );
  }
}
