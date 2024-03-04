import 'package:flutter/material.dart';
import 'package:goldenegg_profit/presentation/widgets/doller_widget.dart';

import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';

class MyFarmList extends StatelessWidget {
  final String duckImage;
  final String duckName;
  final String amount;
  final String profitPercentage;
  final String profitAmount;
  final bool isProfit;
  const MyFarmList({
    super.key,
    required this.duckImage,
    required this.duckName,
    required this.amount,
    required this.profitPercentage,
    required this.profitAmount,
    required this.isProfit,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFF2B200F),
          borderRadius: BorderRadius.circular(Responsive.width(2.5, context))),
      padding: EdgeInsets.symmetric(
          vertical: Responsive.width(5, context),
          horizontal: Responsive.width(3.5, context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(duckImage),
              SizedBox(width: Responsive.width(3, context)),
              Column(
                children: [
                  Text(duckName, style: typography.duckTitle),
                  SizedBox(height: Responsive.height(0.5, context)),
                  Row(
                    children: [
                      Text(amount, style: typography.duckTitle),
                      const DollerWidget(
                        fontSize: 15,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text('$profitAmount ($profitPercentage%)',
                  style:
                      isProfit ? typography.greenProfit : typography.redLoss),
              Text('($amount))', style: typography.duckTitle)
            ],
          )
        ],
      ),
    );
  }
}
