import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goldenegg_profit/application/main_page/bloc/main_page_bloc.dart';
import 'package:goldenegg_profit/domain/constants/app_assets.dart';
import 'package:goldenegg_profit/domain/constants/home_constants.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/history/my_history_page.dart';
import 'package:goldenegg_profit/presentation/home/home_page.dart';
import 'package:goldenegg_profit/presentation/wallet/wallet_page.dart';

final pages = [
  const HomePage(),
  const MyHistory(isNeedBackButton: false),
  const WalletPage()
];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const routerPath = '/main_page';
  static const routerName = 'Main page';

  @override
  Widget build(BuildContext context) {
    final currentPage = context.watch<MainPageBloc>().state.index;
    final colors = AppTheme.of(context).colors;
    return Scaffold(
        body: pages[currentPage],
        backgroundColor: Colors.black,
        bottomNavigationBar: Padding(
            padding: EdgeInsets.only(
                top: Responsive.width(2, context),
                left: Responsive.width(3.7, context),
                bottom: Responsive.width(3.7, context),
                right: Responsive.width(3.7, context)),
            child: SizedBox(
              height: Responsive.height(10, context),
              child: Container(
                alignment: Alignment.center,
                height: Responsive.height(9, context),
                decoration: BoxDecoration(
                  color: colors.darkBg,
                  borderRadius: BorderRadius.circular(
                    Responsive.width(5, context),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => context
                          .read<MainPageBloc>()
                          .add(const MainPageEvent.onPageChange(0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentPage == 0
                              ? SvgPicture.asset('asset/HOME-3.svg')
                              : SvgPicture.asset('asset/HOME_inverse.svg'),
                          const Text(homeText)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context
                          .read<MainPageBloc>()
                          .add(const MainPageEvent.onPageChange(1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentPage == 1
                              ? SvgPicture.asset('asset/Activity1.svg')
                              : SvgPicture.asset('asset/Activity_inverse.svg'),
                          const Text(activityText)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context
                          .read<MainPageBloc>()
                          .add(const MainPageEvent.onPageChange(2)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          currentPage == 2
                              ? SvgPicture.asset('asset/Wallets1.svg')
                              : SvgPicture.asset('asset/Wallets_inverse.svg'),
                          const Text(walletText)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
