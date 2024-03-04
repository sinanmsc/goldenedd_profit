import 'package:flutter/material.dart';
import '../../domain/constants/asset_paths.dart';
import '../../domain/constants/my_farm_constants.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_appbar.dart';
import 'widgets/myfarm_header_widget.dart';
import 'widgets/myfarm_list_widget.dart';

class MyCripto extends StatelessWidget {
  const MyCripto({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
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
                  Row(
                    children: [
                      Text(sortText, style: typography.discription),
                      SizedBox(width: Responsive.width(0.8, context)),
                      Image.asset(
                        Assetpaths.myCriptoAssetPaths.sortIcon,
                        width: Responsive.width(2.5, context),
                        color: const Color(0xFF777777),
                      ),
                    ],
                  ),
                  Text(currentProfitText, style: typography.discription),
                ],
              ),
              SizedBox(height: Responsive.height(1, context)),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => MyFarmList(
                          amount: myFarmList[index].amount,
                          duckImage: myFarmList[index].duckImage,
                          duckName: myFarmList[index].duckName,
                          isProfit: myFarmList[index].isProfit,
                          profitAmount: myFarmList[index].profitAmount,
                          profitPercentage: myFarmList[index].profitPercentage,
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
