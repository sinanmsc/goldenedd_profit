import 'package:flutter/material.dart';

import '../../../domain/constants/common_constants.dart';
import '../../../domain/constants/refferal_constants.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';

class RefferalHeader extends StatelessWidget {
  const RefferalHeader({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          refferalCodeTitle,
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xFFD3CFCF)),
        ),
        SizedBox(height: Responsive.height(1, context)),
        Container(
          padding: EdgeInsets.all(Responsive.width(3.7, context)),
          decoration: BoxDecoration(
            color: colors.textField,
            borderRadius:
                BorderRadius.circular(Responsive.width(3, context)),
            border: Border.all(color: colors.primary, width: 0.1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(refferalDummyLink, style: typography.link),
              Text(copy, style: typography.discription),
            ],
          ),
        )
      ],
    );
  }
}
