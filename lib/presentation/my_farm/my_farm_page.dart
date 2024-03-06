import 'package:flutter/material.dart';
import 'package:goldenegg_profit/presentation/my_farm/my_farm_sell_page.dart';
import 'package:goldenegg_profit/presentation/widgets/shadermasking.dart';
import '../../domain/constants/my_farm_constants.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/sort_widget.dart';
import 'widgets/myfarm_header_widget.dart';
import 'widgets/myfarm_list_widget.dart';
import 'widgets/sell_btn_widget.dart';

class MyCripto extends StatelessWidget {
  const MyCripto({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    final gradients = AppTheme.of(context).gradients;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(0, 70),
            child: CustomAppbar(title: myFarmAppbarTitle)),
        body: Padding(
          padding: EdgeInsets.all(Responsive.width(3.7, context)),
          child: Column(
            children: [
              const MyCriptoHead(),
              SizedBox(height: Responsive.height(4, context)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SortWidget(),
                  Text(currentProfitText, style: typography.discription),
                ],
              ),
              SizedBox(height: Responsive.height(1, context)),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () => showModalBottomSheet(
                            context: context,
                            builder: (context) => Container(
                              height: MediaQuery.sizeOf(context).height / 2.5,
                              padding: EdgeInsets.all(
                                  Responsive.width(1.3, context)),
                              color: colors.textField,
                              child: Column(
                                children: [
                                  MyFarmList(
                                    amount: myFarmList[index].amount,
                                    duckImage: myFarmList[index].duckImage,
                                    duckName: myFarmList[index].duckName,
                                    isProfit: myFarmList[index].isProfit,
                                    profitAmount:
                                        myFarmList[index].profitAmount,
                                    profitPercentage:
                                        myFarmList[index].profitPercentage,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(
                                        Responsive.width(5, context)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height:
                                                Responsive.height(1, context)),
                                        Text(purchaseDate,
                                            style: typography.purchaseDate),
                                        Divider(
                                            color: colors.bg, thickness: 0.4),
                                        CustomShaderMask(
                                          gradient: gradients.btnGradient,
                                          child: Row(
                                            children: [
                                              const Icon(Icons.menu),
                                              SizedBox(
                                                  width: Responsive.width(
                                                      5, context)),
                                              Text(holdDetailstxt,
                                                  style: typography.iconText)
                                            ],
                                          ),
                                        ),
                                        Divider(
                                            color: colors.bg, thickness: 0.4),
                                        SizedBox(
                                            height: Responsive.height(
                                                4.5, context)),
                                        SellBtn(
                                          text: sellBtntxt,
                                          onPressed: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    MyFarmSell(
                                                        imagePath:
                                                            myFarmList[index]
                                                                .duckImage,
                                                        name: myFarmList[index]
                                                            .duckName,
                                                        amount:
                                                            myFarmList[index]
                                                                .amount),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          child: MyFarmList(
                            amount: myFarmList[index].amount,
                            duckImage: myFarmList[index].duckImage,
                            duckName: myFarmList[index].duckName,
                            isProfit: myFarmList[index].isProfit,
                            profitAmount: myFarmList[index].profitAmount,
                            profitPercentage:
                                myFarmList[index].profitPercentage,
                          ),
                        ),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: Responsive.height(1.5, context)),
                    itemCount: myFarmList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
