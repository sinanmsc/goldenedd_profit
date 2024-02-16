import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/home_constants.dart';
import 'package:goldenegg_profit/domain/router/router.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/home/widgets/home_header.dart';

import '../../domain/constants/app_assets.dart';
import '../widgets/payment_container.dart';
import 'widgets/coin_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routerPath = '/home';
  static const routerName = 'Home';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const HomeHeader(),
                Padding(
                  padding: EdgeInsets.all(Responsive.width(3.7, context)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, RoutPaths.payment),
                          child: PaymentContainer(
                            title: creditTitle,
                            subTitle: creditSubTitle,
                            child: Container(
                              margin: EdgeInsets.only(
                                  right: Responsive.width(3, context)),
                              padding: EdgeInsets.only(
                                  left: Responsive.width(1.5, context)),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AppAssets.homeAssets.creditBg),
                              ),
                              child: AppAssets.homeAssets.creditIcon,
                            ),
                          )),
                      SizedBox(height: Responsive.height(2, context)),
                      CoinList(title: resentCoinText, list: coinList1),
                      SizedBox(height: Responsive.height(4, context)),
                      CoinList(title: topCoinText, list: coinList2),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
