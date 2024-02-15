import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goldenegg_profit/domain/constants/home_constants.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/home/widgets/home_header_component_widget.dart';
import 'package:goldenegg_profit/presentation/profile/profile_page.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    return Container(
      padding: EdgeInsets.all(Responsive.width(3.5, context)),
      height: MediaQuery.sizeOf(context).height / 3,
      decoration: BoxDecoration(gradient: gradients.background),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => context.push(Profile.routerPath),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(profileImage),
                ),
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {},
                      child: Image.asset('asset/home/search.png')),
                  InkWell(
                      onTap: () {}, child: Image.asset('asset/home/noti.png')),
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(Responsive.width(3.5, context)),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeHeaderComponents(
                        label: depositText, icon: depositImage),
                    HomeHeaderComponents(
                        label: myCriptoText, icon: myCriptoImage),
                    HomeHeaderComponents(label: ordersText, icon: ordersImage),
                  ],
                ),
                SizedBox(
                  height: Responsive.height(3, context),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeHeaderComponents(
                        label: savingsText, icon: savingsImage),
                    HomeHeaderComponents(
                        label: refferalText, icon: refferalImage),
                    HomeHeaderComponents(label: moreText, icon: moreImage),
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
