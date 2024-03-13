import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/presentation/get_start/widgets/btn_widget.dart';

import '../../application/profile/bloc/profile_bloc.dart';
import '../../domain/constants/profile_constants.dart';
import '../../domain/router/router.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../authentication/auth_page.dart';
import '../widgets/gradient_appbar_title_widget.dart';
import '../widgets/gradient_arrow_widget.dart';
import 'widgets/details_field_widget.dart';
import 'widgets/profile_header_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static const routerPath = '/profile';
  static const routerName = 'Profile';

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    final typography = AppTheme.of(context).typography;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const GradientAppbarTitle(titleText: profileAopbarTitle),
          leading: const GradientArrowWidget(),
          backgroundColor: colors.darkAppbar,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, RoutPaths.editProfile),
                  child: Image.asset('asset/profile/edit_btn.png')),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileHeader(),
              Padding(
                padding: EdgeInsets.all(Responsive.width(3.7, context)),
                child: ValueListenableBuilder(
                    valueListenable: profileData,
                    builder: (context, value, child) {
                      return Column(
                        children: [
                          DetailsField(
                              headText: usernameHead,
                              valueText: value.userName),
                          SizedBox(height: Responsive.height(3, context)),
                          DetailsField(
                              headText: emailHead, valueText: value.email),
                          SizedBox(height: Responsive.height(3, context)),
                          DetailsField(
                              headText: mobileNoHead,
                              valueText: value.mobileNo),
                          SizedBox(height: Responsive.height(3, context)),
                          DetailsField(
                              headText: addressHead, valueText: value.adsress),
                          SizedBox(height: Responsive.height(3, context)),
                          const DetailsField(
                              headText: passwordHead, valueText: '********'),
                          SizedBox(height: Responsive.height(4, context)),
                          value.proofNo.isEmpty
                              ? GestureDetector(
                                  onTap: () => Navigator.pushNamed(
                                      context, RoutPaths.addKycPage),
                                  child: const ButtonWidget(
                                    title: addKycAppbar,
                                  ),
                                )
                              : Column(
                                  children: [
                                    Text(
                                      kycdHead,
                                      style: typography.subTitle,
                                    ),
                                    SizedBox(
                                        height: Responsive.height(3, context)),
                                    DetailsField(
                                        headText: proofType.value,
                                        valueText: value.proofNo),
                                    SizedBox(
                                        height: Responsive.height(2, context)),
                                    proofImage.value.isEmpty
                                        ? const SizedBox()
                                        : Container(
                                            padding: EdgeInsets.all(
                                                Responsive.width(8, context)),
                                            child: ValueListenableBuilder(
                                                valueListenable:
                                                    savedProofImage,
                                                builder: (context, value, _) {
                                                  if (value.isNotEmpty) {
                                                    return Image.file(
                                                        File(value));
                                                  } else {
                                                    return Image.file(
                                                        File(proofImage.value));
                                                  }
                                                }))
                                  ],
                                ),
                          SizedBox(height: Responsive.height(4, context)),
                          GestureDetector(
                              onTap: () {
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.logOut());
                                Navigator.pushNamedAndRemoveUntil(context,
                                    RoutPaths.authPage, (route) => false);
                              },
                              child: const ButtonWidget(title: logOutBtnTxt))
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
