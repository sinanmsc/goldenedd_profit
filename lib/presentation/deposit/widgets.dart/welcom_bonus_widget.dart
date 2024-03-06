import 'package:flutter/material.dart';

import '../../../domain/constants/deposit_constants.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';
import '../../widgets/doller_widget.dart';

class WelcomBonusWidget extends StatelessWidget {
  const WelcomBonusWidget({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    return Container(
      padding: EdgeInsets.all(Responsive.width(0.2, context)),
      decoration: BoxDecoration(
        gradient: gradients.btnGradient,
        borderRadius:
            BorderRadius.circular(Responsive.width(2.8, context)),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: Responsive.width(3.7, context),
            horizontal: Responsive.width(16, context)),
        decoration: BoxDecoration(
          color: const Color(0xFF181818),
          borderRadius:
              BorderRadius.circular(Responsive.width(2.8, context)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('$welcomeBonus 25', style: typography.boldTitle),
                const DollerWidget(fontSize: 18)
              ],
            ),
            SizedBox(height: Responsive.height(1.5, context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('$dailyProfit 0.25',
                    style: typography.duckTitle),
                const DollerWidget(fontSize: 15)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
