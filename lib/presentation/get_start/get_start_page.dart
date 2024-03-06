import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/get_start/get_start_bloc.dart';
import 'package:goldenegg_profit/domain/constants/app_assets.dart';
import 'package:goldenegg_profit/domain/router/router.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/constants/getstart_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/get_start/widgets/get_start_center_widget.dart';
import 'package:goldenegg_profit/presentation/get_start/widgets/btn_widget.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});
  static const routerPath = '/';
  static const routerName = 'Get Start';

  @override
  Widget build(BuildContext context) {
    // final spaces = AppTheme.of(context).spaces;
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
        Navigator.pushNamedAndRemoveUntil(
            context, RoutPaths.authPage, (Route<dynamic> route) => false);
      }
      pageController.animateToPage(page,
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Responsive.width(5.5, context)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Responsive.height(18, context)),
              SizedBox(
                height: Responsive.height(55, context),
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) => context
                      .read<GetStartBloc>()
                      .add(GetStartEvent.getIndexEvent(value)),
                  scrollDirection: Axis.horizontal,
                  children: [
                    GetStartCenterWidget(
                      head: getstartHeadText1,
                      subtxt: getstartSubText1,
                      image: AppAssets.getStartAssets.getStartImg1,
                    ),
                    GetStartCenterWidget(
                      head: getstartHeadText2,
                      subtxt: getstartSubText2,
                      image: AppAssets.getStartAssets.getStartImg2,
                    ),
                    GetStartCenterWidget(
                      head: getstartHeadText3,
                      subtxt: getstartSubText3,
                      image: AppAssets.getStartAssets.getStartImg3,
                    ),
                  ],
                ),
              ),
              // SizedBox(height: spaces.space_200),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: Responsive.width(1.38, context),
                    backgroundColor:
                        context.watch<GetStartBloc>().state.index == 0
                            ? colors.primary
                            : colors.inversePrimary,
                  ),
                  SizedBox(width: Responsive.width(1.38, context)),
                  CircleAvatar(
                    radius: Responsive.width(1.38, context),
                    backgroundColor:
                        context.watch<GetStartBloc>().state.index == 1
                            ? colors.primary
                            : colors.inversePrimary,
                  ),
                  SizedBox(width: Responsive.width(1.38, context)),
                  CircleAvatar(
                    radius: Responsive.width(1.38, context),
                    backgroundColor:
                        context.watch<GetStartBloc>().state.index == 2
                            ? colors.primary
                            : colors.inversePrimary,
                  ),
                ],
              ),
              SizedBox(height: Responsive.height(6, context)),
              GestureDetector(
                  onTap: onNextBtn,
                  child: const ButtonWidget(
                    title: getStartbtnText,
                  )),
              // SizedBox(height: Responsive.height(4.6, context)),
            ],
          ),
        ),
      ),
    );
  }
}
