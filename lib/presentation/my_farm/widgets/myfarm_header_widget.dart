import 'package:flutter/material.dart';

import '../../../domain/constants/my_farm_constants.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';
import '../../widgets/doller_widget.dart';

class MyCriptoHead extends StatelessWidget {
  const MyCriptoHead({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(myCriptoHeadText, style: typography.title),
        SizedBox(height: Responsive.height(1.3, context)),
        Container(
          padding: EdgeInsets.all(Responsive.width(0.1, context)),
          decoration: BoxDecoration(
            gradient: gradients.border,
            borderRadius: BorderRadius.circular(Responsive.width(3, context)),
          ),
          child: Container(
            padding: EdgeInsets.all(Responsive.width(3.7, context)),
            decoration: BoxDecoration(
              color: const Color(0xFF141414),
              borderRadius: BorderRadius.circular(Responsive.width(3, context)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(currentHead, style: typography.discription),
                        SizedBox(height: Responsive.height(1.5, context)),
                        Row(
                          children: [
                            Text(currentValue, style: typography.boldTitle),
                            const DollerWidget(fontSize: 18),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(totalProfitEggHead, style: typography.discription),
                        SizedBox(height: Responsive.height(1.5, context)),
                        Row(
                          children: [
                            Image.asset('asset/gegg.png'),
                            Text(totalProfitValue, style: typography.bigGreen),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
