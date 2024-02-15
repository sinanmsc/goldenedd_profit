import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/main_page/bloc/main_page_bloc.dart';
import 'package:goldenegg_profit/domain/constants/home_constants.dart';
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
    return Scaffold(
        body: pages[currentPage],
        backgroundColor: Colors.black,
        bottomNavigationBar: Padding(
            padding: EdgeInsets.all(Responsive.width(3.7, context)),
            child: SizedBox(
              height: Responsive.height(10, context),
              child: Container(
                alignment: Alignment.center,
                height: Responsive.height(9, context),
                decoration: BoxDecoration(
                  color: const Color(0xFF191919),
                  borderRadius: BorderRadius.circular(
                    Responsive.width(5, context),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () => context
                          .read<MainPageBloc>()
                          .add(const MainPageEvent.onPageChange(0)),
                      child: Column(
                        children: [
                          Image.asset(homeImage),
                          const Text(homeText)
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => context
                          .read<MainPageBloc>()
                          .add(const MainPageEvent.onPageChange(1)),
                      child: Column(
                        children: [
                          Image.asset(activityImage),
                          const Text(activityText)
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => context
                          .read<MainPageBloc>()
                          .add(const MainPageEvent.onPageChange(2)),
                      child: Column(
                        children: [
                          Image.asset(walletImage),
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
