import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height / 8,
              width: double.infinity,
              decoration:  BoxDecoration(
                gradient: 
                gradients.background,
              ),
              // child: IconButton(onPressed: ()=>context.pop(), icon: Icon(Icons.arrow_back)),
            ),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.sizeOf(context).height / 6,
              width: double.infinity,
              child: Text(
                demoUserName,
                style: typography.name,
              ),
            ),
          ],
        ),
        Positioned(
          bottom: Responsive.height(11, context),
          left: Responsive.height(16.5, context),
          child: const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(profileImage),
          ),
        ),
      ],
    );
  }
}
