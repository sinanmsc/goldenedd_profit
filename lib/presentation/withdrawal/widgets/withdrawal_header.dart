import 'package:flutter/material.dart';

import '../../../domain/constants/payment_constents.dart';
import '../../../domain/constants/withdrawal_constants.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';
import '../../widgets/doller_widget.dart';
import '../../widgets/outlined_widget.dart';
import '../../widgets/shadermasking.dart';

class WithdrawalHeader extends StatelessWidget {
  const WithdrawalHeader({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return Column(
      children: [
        OutlinedContainer(
          padding: EdgeInsets.all(Responsive.width(2.5, context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(withdrawalminTxt, style: typography.name),
              const DollerWidget(fontSize: 18),
            ],
          ),
        ),
        SizedBox(height: Responsive.height(3, context)),
        CustomShaderMask(
            gradient: gradients.darkGold,
            child: Text(paymentSubTitle, style: typography.subTitle)),
      ],
    );
  }
}
