import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/my_farm_constants.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/router/router.dart';
import 'package:goldenegg_profit/presentation/my_farm/widgets/sell_btn_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/doller_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/outlined_widget.dart';

import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';

class MyFarmSell extends StatelessWidget {
  final String imagePath;
  final String name;
  final String amount;
  const MyFarmSell(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(Responsive.width(10, context)),
                child: Column(
                  children: [
                    Text(myFarmConfirmTitle, style: typography.mainTitle),
                    SizedBox(height: Responsive.height(2, context)),
                    OutlinedContainer(
                      padding: EdgeInsets.all(Responsive.width(12, context)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(imagePath),
                              SizedBox(width: Responsive.width(2, context)),
                              Column(
                                children: [
                                  Text(name, style: typography.duckTitle),
                                  Row(
                                    children: [
                                      Text(amount,
                                          style: typography.greenProfit),
                                      const DollerWidget(fontSize: 14)
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: Responsive.height(3, context)),
                          Text(
                            myFarmConfirmMsg,
                            style: typography.purchaseDate,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(Responsive.width(5, context)),
                child: Column(
                  children: [
                    SellBtn(
                      text: confirmSellBtntxt,
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context, RoutPaths.mainPage, (route) => false),
                    ),
                    SizedBox(height: Responsive.height(1, context)),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        alignment: Alignment.center,
                        height: Responsive.height(5, context),
                        decoration: BoxDecoration(
                          border: Border.all(color: colors.failed, width: 1),
                          borderRadius: BorderRadius.circular(
                            Responsive.width(6, context),
                          ),
                        ),
                        child: const Text(
                          cancelBtn,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
