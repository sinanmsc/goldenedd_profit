import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goldenegg_profit/domain/constants/app_assets.dart';
import 'package:goldenegg_profit/domain/constants/home_constants.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/router/router.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/home/widgets/home_header_component_widget.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    return Container(
      padding: EdgeInsets.all(Responsive.width(3.5, context)),
      height: MediaQuery.sizeOf(context).height / 3.1,
      decoration: BoxDecoration(gradient: gradients.background),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, RoutPaths.profile),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(profileImage),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset('asset/home/search_svg.svg')),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, RoutPaths.notification),
                    child: AppAssets.homeAssets.notiImg,
                  ),
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: Responsive.width(3.5, context),
                horizontal: Responsive.width(4, context)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeHeaderComponents(
                        onTap: () =>
                            Navigator.pushNamed(context, RoutPaths.deposit),
                        label: depositText,
                        icon: AppAssets.homeAssets.depositImg),
                    HomeHeaderComponents(
                        onTap: () => Navigator.pushNamed(
                            context, RoutPaths.myCriptoPage),
                        label: myCriptoText,
                        icon: AppAssets.homeAssets.myCriptoImg),
                    HomeHeaderComponents(
                        label: ordersText,
                        icon: AppAssets.homeAssets.ordersImg),
                  ],
                ),
                SizedBox(
                  height: Responsive.height(2, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeHeaderComponents(
                        label: savingsText,
                        icon: AppAssets.homeAssets.savingsImg),
                    HomeHeaderComponents(
                        label: refferalText,
                        icon: AppAssets.homeAssets.refferalImg),
                    HomeHeaderComponents(
                        label: moreText, icon: AppAssets.homeAssets.moreImg),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
