import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/deposit_constants.dart';
import 'package:goldenegg_profit/domain/models/deposit_scheme_model.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/deposit/widgets.dart/welcom_bonus_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/payment_successful_page.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_appbar.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';
import 'package:goldenegg_profit/presentation/widgets/shadermasking.dart';

import '../../domain/router/router.dart';
import '../../domain/theme/theme_helper.dart';
import '../widgets/doller_widget.dart';

class DepositDetail extends StatelessWidget {
  final Gradient containerGradient;
  final DepositSchemeModel scheme;
  const DepositDetail(
      {super.key, required this.scheme, required this.containerGradient});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(0, 70),
            child: CustomAppbar(
                title: depositAppbarTitle, isNeedBackButton: true)),
        body: Padding(
          padding: EdgeInsets.all(Responsive.width(3.7, context)),
          child: Column(
            children: [
              const Center(child: WelcomBonusWidget()),
              SizedBox(height: Responsive.height(4, context)),
              Container(
                padding: EdgeInsets.all(Responsive.width(0.2, context)),
                decoration: BoxDecoration(
                    gradient: containerGradient,
                    borderRadius:
                        BorderRadius.circular(Responsive.width(3, context))),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(Responsive.width(5, context)),
                  decoration: BoxDecoration(
                      color: const Color(0xFF181818),
                      borderRadius:
                          BorderRadius.circular(Responsive.width(3, context))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(scheme.imagePath),
                              SizedBox(width: Responsive.width(3, context)),
                              Text(scheme.title,
                                  style: typography.semiBoldTitle),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                scheme.amount,
                                style: typography.appBarTitle,
                              ),
                              const DollerWidget(fontSize: 24),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: Responsive.height(3, context)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$dailyProfit ${scheme.profitAmount}',
                              style: typography.duckTitle),
                          const DollerWidget(fontSize: 15),
                        ],
                      ),
                      SizedBox(height: Responsive.height(2.7, context)),
                      Text(
                        depositDiscription,
                        style: typography.verySmallDiscription,
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: Responsive.height(5, context)),
                      SizedBox(
                          height: Responsive.height(6.5, context),
                          width: Responsive.width(70, context),
                          child: CustomButton(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PaymentSuccessfulPage(
                                        topMsg: CustomShaderMask(
                                            gradient: gradients.btnGradient,
                                            child: const Text(
                                                depositSuccessTopMsg)),
                                        onTap: () {
                                          paymentScreenshot.value = '';
                                          Navigator.pushNamedAndRemoveUntil(
                                              context,
                                              RoutPaths.mainPage,
                                              (route) => false);
                                        },
                                        successMsg: depositSuccessMsg),
                                  )),
                              text: 'Buy Now')),
                      SizedBox(height: Responsive.height(3, context)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
