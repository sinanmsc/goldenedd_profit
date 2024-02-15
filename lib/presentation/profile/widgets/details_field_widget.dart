import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

class DetailsField extends StatelessWidget {
  final String headText;
  final String valueText;
  const DetailsField({
    super.key,
    required this.headText,
    required this.valueText,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headText,
              style: typography.ui,
            ),
            Text(
              valueText,
              style: typography.uiInvers,
            ),
          ],
        ),
        Divider(
          height: Responsive.height(3, context),
          thickness: 0.2,
          color: colors.bg,
        )
      ],
    );
  }
}
