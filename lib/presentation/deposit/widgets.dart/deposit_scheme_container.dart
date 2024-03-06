import 'package:flutter/material.dart';
import 'package:goldenegg_profit/presentation/widgets/doller_widget.dart';

import '../../../domain/constants/deposit_constants.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';

class DepositSchemContainer extends StatelessWidget {
  final String title;
  final String amount;
  final Gradient gradient;
  final String profitAmount;
  final String imagePath;

  const DepositSchemContainer({
    super.key,
    required this.gradient,
    required this.amount,
    required this.title,
    required this.profitAmount,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    return Container(
      padding: EdgeInsets.all(Responsive.width(0.2, context)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Responsive.width(3.5, context)),
          gradient: gradient),
      child: Container(
        padding: EdgeInsets.all(Responsive.width(3, context)),
        decoration: BoxDecoration(
          color: const Color(0xFF181818),
          borderRadius: BorderRadius.circular(Responsive.width(3.5, context)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(imagePath, width: 48),
                        SizedBox(height: Responsive.height(3, context)),
                      ],
                    ),
                    SizedBox(width: Responsive.width(2, context)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Responsive.height(0.5, context)),
                        Text(title, style: typography.semiBoldTitle),
                        SizedBox(height: Responsive.height(1, context)),
                        Row(
                          children: [
                            SizedBox(
                              width: Responsive.width(40, context),
                              child: Row(
                                children: [
                                  Text('$dailyProfit $profitAmount',
                                      style: typography.duckTitle),
                                  const DollerWidget(fontSize: 15),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: ShaderMask(
                                shaderCallback: (bounds) =>
                                    gradient.createShader(bounds),
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: Responsive.width(5, context),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: typography.bigWhite,
                    ),
                    const DollerWidget(fontSize: 24),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
