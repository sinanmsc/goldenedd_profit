import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/router/router.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/profile/widgets/details_field_widget.dart';
import 'package:goldenegg_profit/presentation/profile/widgets/profile_header_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/gradient_appbar_title_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/gradient_arrow_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static const routerPath = '/profile';
  static const routerName = 'Profile';

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const GradientAppbarTitle(titleText: profileAopbarTitle),
          leading: const GradientArrowWidget(),
          backgroundColor: colors.darkAppbar,
          actions: [
            TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, RoutPaths.editProfile),
                child: Image.asset('asset/profile/edit_btn.png'))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileHeader(),
            Padding(
              padding: EdgeInsets.all(Responsive.width(3.7, context)),
              child: Column(
                children: [
                  const DetailsField(
                      headText: usernameHead, valueText: demoUserName),
                  SizedBox(height: Responsive.height(3, context)),
                  const DetailsField(headText: emailHead, valueText: demoEmail),
                  SizedBox(height: Responsive.height(3, context)),
                  const DetailsField(
                      headText: mobileNoHead, valueText: demonumber),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
