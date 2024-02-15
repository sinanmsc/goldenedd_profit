import 'package:flutter/material.dart';

import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';

class CoinContainer extends StatelessWidget {
  final String amount;
  final String coinImage;
  final String percentage;
  final bool isGreen;
  final String graphImg;
  final String coin;
  const CoinContainer({
    super.key,
    required this.amount,
    required this.coin,
    required this.coinImage,
    required this.graphImg,
    required this.isGreen,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;

    return Container(
      width: MediaQuery.sizeOf(context).width / 2.4,
      padding: EdgeInsets.all(Responsive.width(3, context)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Responsive.width(4, context)),
        color: colors.darkBg,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(amount,
                  style:
                      isGreen ? typography.greenAmount : typography.redAmount),
              Image.asset(coinImage)
            ],
          ),
          // SizedBox(height: Responsive.height(0.6, context)),
          Row(
            children: [
              Text(coin, style: typography.subTitle),
              Text(percentage,
                  style: isGreen ? typography.greenSmall : typography.redSmall)
            ],
          ),
          // SizedBox(height: Responsive.height(1.5, context)),
          Image.asset(graphImg),
        ],
      ),
    );
  }
}
