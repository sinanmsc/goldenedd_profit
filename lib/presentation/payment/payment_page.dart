import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/router/router.dart';

import '../../domain/constants/app_assets.dart';
import '../../domain/constants/payment_constents.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_appbar.dart';
import 'widgets/payment_method_widget.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(0, 70),
            child: CustomAppbar(title: paymentTitle)),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.width(3.7, context),
              vertical: Responsive.width(5, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(paymentPageHead, style: typography.name),
              SizedBox(height: Responsive.height(6, context)),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, RoutPaths.addCardPage),
                child: PaymentMethodContainer(
                  title: debitTitle,
                  subTitle: debitSubTitle,
                  image: AppAssets.paymentAssets.debitImg,
                ),
              ),
              SizedBox(height: Responsive.height(3, context)),
              PaymentMethodContainer(
                title: bankTitle,
                subTitle: bankSubTitle,
                image: AppAssets.paymentAssets.bankImg,
              )
            ],
          ),
        ),
      ),
    );
  }
}
