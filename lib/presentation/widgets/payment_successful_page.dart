import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/common_constants.dart';
import 'package:goldenegg_profit/domain/constants/deposit_constants.dart';
import 'package:goldenegg_profit/domain/router/router.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_outlined_button.dart';
import 'package:goldenegg_profit/presentation/withdrawal/withdrawal_page.dart';

import '../../domain/theme/theme_helper.dart';

class PaymentSuccessfulPage extends StatelessWidget {
  final Widget topMsg;
  final void Function()? onTap;
  final String successMsg;
  const PaymentSuccessfulPage(
      {super.key, required this.successMsg, this.onTap, required this.topMsg});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    return SafeArea(
      child: Scaffold(
          body: Container(
              padding: EdgeInsets.all(Responsive.width(3.7, context)),
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(gradient: gradients.background),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      topMsg,
                      SizedBox(height: Responsive.height(5, context)),
                      CircleAvatar(
                        backgroundColor: const Color(0xFF27A512),
                        radius: Responsive.width(9, context),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: Responsive.width(12, context),
                        ),
                      ),
                      SizedBox(height: Responsive.height(5, context)),
                      Text(successMsg, style: typography.paymentSucceful),
                      SizedBox(height: Responsive.height(1, context)),
                      Text(paymentTime, style: typography.smallDiscription),
                      SizedBox(height: Responsive.height(5, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(goldeniggIdTitle, style: typography.iconText),
                          Text('GE2334', style: typography.iconText),
                        ],
                      ),
                      SizedBox(height: Responsive.height(3, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(walletAddressIdTitle,
                              style: typography.iconText),
                          Text(walletAddressValue.value,
                              style: typography.title12),
                        ],
                      ),
                      SizedBox(height: Responsive.height(8, context)),
                      CustomButton(
                          onTap: onTap ??
                              () => Navigator.pushNamedAndRemoveUntil(context,
                                  RoutPaths.mainPage, (route) => false),
                          text: txtBackToHome),
                      SizedBox(height: Responsive.height(2, context)),
                      CustomOutlinedButton(
                        onTap: () =>
                            Navigator.pushNamed(context, RoutPaths.myOrders),
                        title: txtViewOrders,
                      )
                    ],
                  ),
                ),
              ))),
    );
  }
}
