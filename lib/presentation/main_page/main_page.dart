import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/main_page/bloc/main_page_bloc.dart';
import 'package:goldenegg_profit/domain/constants/app_assets.dart';
import 'package:goldenegg_profit/domain/constants/home_constants.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/dummy_page_1.dart';
import 'package:goldenegg_profit/presentation/dummy_page_2.dart';
import 'package:goldenegg_profit/presentation/home/home_page.dart';

final pages = [const HomePage(), const Dummy1(), const Dummy2()];

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
                        children: [
                          SizedBox(height: Responsive.height(1, context)),
                          Image.asset('asset/home/home_icon.png'),
                          const Text(homeText)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context
                          .read<MainPageBloc>()
                          .add(const MainPageEvent.onPageChange(1)),
                      child: Column(
                        children: [
                          AppAssets.mainPageAssets.activityIcon,
                          const Text(activityText)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => context
                          .read<MainPageBloc>()
                          .add(const MainPageEvent.onPageChange(2)),
                      child: Column(
                        children: [
                          AppAssets.mainPageAssets.walletIcon,
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
