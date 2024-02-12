import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:goldenegg_profit/application/get_start/get_start_bloc.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/get_start/core/constants.dart';
import 'package:goldenegg_profit/presentation/authentication/auth_page.dart';
import 'package:goldenegg_profit/presentation/get_start/widgets/get_start_center_widget.dart';
import 'package:goldenegg_profit/presentation/get_start/widgets/btn_widget.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});
  static const routerPath = '/';
  static const routerName = 'Get Start';

  @override
  Widget build(BuildContext context) {
    final spaces = AppTheme.of(context).spaces;
    final PageController pageController = PageController();
    final currentIndex = context.watch<GetStartBloc>().state.index;
    final colors = AppTheme.of(context).colors;

    onNextBtn() {
      int page = 0;
      if (currentIndex == 0) {
        page = 1;
      } else if (currentIndex == 1) {
        page = 2;
      } else if (currentIndex == 2) {
        context.push(AuthPage.routerPath);
      }
      pageController.animateToPage(page,
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(spaces.space_300),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: spaces.space_500 * 6),
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) => context
                      .read<GetStartBloc>()
                      .add(GetStartEvent.getIndexEvent(value)),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    GetStartCenterWidget(
                        head: getstartHeadText1, image: getStartImage1),
                    GetStartCenterWidget(
                        head: getstartHeadText2, image: getStartImage2),
                    GetStartCenterWidget(
                        head: getstartHeadText3, image: getStartImage3),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: spaces.space_75,
                    backgroundColor:
                        context.watch<GetStartBloc>().state.index == 0
                            ? colors.primary
                            : colors.inversePrimary,
                  ),
                  SizedBox(width: spaces.space_75),
                  CircleAvatar(
                    radius: spaces.space_75,
                    backgroundColor:
                        context.watch<GetStartBloc>().state.index == 1
                            ? colors.primary
                            : colors.inversePrimary,
                  ),
                  SizedBox(width: spaces.space_75),
                  CircleAvatar(
                    radius: spaces.space_75,
                    backgroundColor:
                        context.watch<GetStartBloc>().state.index == 2
                            ? colors.primary
                            : colors.inversePrimary,
                  ),
                ],
              ),
              SizedBox(height: spaces.space_500 * 2),
              InkWell(onTap: onNextBtn, child: const ButtonWidget()),
              SizedBox(height: spaces.space_500),
            ],
          ),
        ),
      ),
    );
  }
}
