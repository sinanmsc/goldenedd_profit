import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/models/profile_model.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/profile/widgets/edit_profile_center_widget.dart';
import 'package:goldenegg_profit/presentation/profile/widgets/profile_header_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_outlined_button.dart';
import 'package:goldenegg_profit/presentation/widgets/gradient_appbar_title_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/gradient_arrow_widget.dart';

class EditProfile extends StatelessWidget {
  final ProfileModel profileModel;
  const EditProfile({super.key, required this.profileModel});

  static const routerPath = '/edit_profile';
  static const routerName = 'Edit Profile';

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    return Scaffold(
      appBar: AppBar(
        title: const GradientAppbarTitle(titleText: editProfileAopbarTitle),
        leading: const GradientArrowWidget(),
        backgroundColor: colors.darkAppbar,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const ProfileHeader(),
                Positioned(
                  bottom: Responsive.width(24, context),
                  right: Responsive.width(33, context),
                  child: CircleAvatar(
                    radius: Responsive.width(5.3, context),
                    backgroundColor: colors.iconBg,
                    child: Image.asset(cameraIcon),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(Responsive.width(3.7, context)),
              child: Column(
                children: [
                  EditProfileCcenter(profileModel: profileModel),
                  SizedBox(height: Responsive.height(4, context)),
                  CustomButton(
                      onTap: () => context.pop(), text: saveChangesBtn),
                  SizedBox(height: Responsive.height(2, context)),
                  CustomOutlinedButton(onTap: () => context.pop())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
