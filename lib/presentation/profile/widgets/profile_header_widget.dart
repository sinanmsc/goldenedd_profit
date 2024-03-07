import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/profile/bloc/profile_bloc.dart';
import '../../../domain/constants/profile_constants.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    final image = context.watch<ProfileBloc>().state.image;
    final isNewImage = context.read<ProfileBloc>().state.isNewImage;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height / 8,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: gradients.background,
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
          child: ValueListenableBuilder(
              valueListenable: imageValue,
              builder: (context, value, child) {
                log('va : $value');
                return CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    backgroundImage: value.isEmpty
                        ? AssetImage(image) as ImageProvider
                        : FileImage(File(imageValue.value)));
              }),
        ),
      ],
    );
  }
}
