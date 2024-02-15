import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/constants/getstart_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

class GetStartCenterWidget extends StatelessWidget {
  final String head;
  final String image;
  const GetStartCenterWidget(
      {super.key, required this.head, required this.image});

  @override
  Widget build(BuildContext context) {
    // final spaces = AppTheme.of(context).spaces;
    final typography = AppTheme.of(context).typography;
    return Column(
      children: [
        Center(child: Image.asset(image)),
        SizedBox(height: Responsive.height(3.3, context)),
        Text(
          head,
          style: typography.getStartHead,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: Responsive.height(2.5  , context)),
        Text(
          getstartSubText,
          style: typography.small,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
