import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goldenegg_profit/application/profile/bloc/profile_bloc.dart';
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
              ValueListenableBuilder(
                  valueListenable: savedImageValue,
                  builder: (context, value, child) {
                    return GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, RoutPaths.profile),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: value.isEmpty
                            ? const AssetImage(profileImage) as ImageProvider
                            : FileImage(File(savedImageValue.value)),
                      ),
                    );
                  }),
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
                        onTap: () => Navigator.pushNamed(
                            context, RoutPaths.depositPayment),
                        label: depositText,
                        icon: AppAssets.homeAssets.depositImg),
                    HomeHeaderComponents(
                        onTap: () => Navigator.pushNamed(
                            context, RoutPaths.myCriptoPage),
                        label: myFarmText,
                        icon: AppAssets.homeAssets.myFarmImg),
                    HomeHeaderComponents(
                        onTap: () =>
                            Navigator.pushNamed(context, RoutPaths.myOrders),
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
                        onTap: () =>
                            Navigator.pushNamed(context, RoutPaths.myHistory),
                        label: historytxt,
                        icon: AppAssets.homeAssets.moreImg),
                    HomeHeaderComponents(
                        onTap: () =>
                            Navigator.pushNamed(context, RoutPaths.refferal),
                        label: myTeamtxt,
                        icon: AppAssets.homeAssets.refferalImg),
                    HomeHeaderComponents(
                        onTap: () =>
                            Navigator.pushNamed(context, RoutPaths.withdrawal),
                        label: withdrawalText,
                        icon: AppAssets.homeAssets.savingsImg),
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
