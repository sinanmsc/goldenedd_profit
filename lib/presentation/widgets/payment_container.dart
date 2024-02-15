import 'package:flutter/material.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import 'forward_button.dart';

class PaymentContainer extends StatelessWidget {
  final Widget child;
  final String title;
  final String subTitle;
  const PaymentContainer({
    super.key,
    required this.child,
    required this.subTitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;

    return Container(
      margin: EdgeInsets.only(bottom: Responsive.width(4, context)),
      width: double.infinity,
      padding: EdgeInsets.all(Responsive.width(3.7, context)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Responsive.width(4, context)),
        gradient: gradients.payBackground,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              child,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: typography.title),
                  Text(subTitle, style: typography.subTitle),
                ],
              ),
            ],
          ),
          const ForwardButton()
        ],
      ),
    );
  }
}