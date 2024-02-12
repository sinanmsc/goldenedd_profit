import 'package:flutter/material.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/get_start/core/constants.dart';

class GetStartCenterWidget extends StatelessWidget {
  final String head;
  final String image;
  const GetStartCenterWidget({super.key, required this.head,required this.image});

  @override
  Widget build(BuildContext context) {
    final spaces = AppTheme.of(context).spaces;
    final typography = AppTheme.of(context).typography;
    return Column(
      children: [
        Center(child: Image.asset(image)),
        SizedBox(height: spaces.space_300),
        Text(
          head,
          style: typography.getStartHead,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: spaces.space_300),
        Text(
          getstartSubText,
          style: typography.small,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
