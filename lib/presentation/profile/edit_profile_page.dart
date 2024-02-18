import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/profile/bloc/profile_bloc.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/profile/widgets/edit_profile_center_widget.dart';
import 'package:goldenegg_profit/presentation/profile/widgets/profile_header_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_outlined_button.dart';
import 'package:goldenegg_profit/presentation/widgets/gradient_appbar_title_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/gradient_arrow_widget.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  EditProfile({super.key});

  static const routerPath = '/edit_profile';
  static const routerName = 'Edit Profile';

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    final imagePicker = ImagePicker();
    return Scaffold(
      appBar: AppBar(
        title: const GradientAppbarTitle(titleText: editProfileAopbarTitle),
        leading: const GradientArrowWidget(),
        backgroundColor: colors.darkAppbar,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const ProfileHeader(),
                  Positioned(
                    bottom: Responsive.width(24, context),
                    right: Responsive.width(33, context),
                    child: GestureDetector(
                      onTap: () async {
                        try {
                          XFile? pickedImage = await imagePicker.pickImage(
                              source: ImageSource.gallery);
                          if (pickedImage != null) {
                            if (context.mounted) {
                              context.read<ProfileBloc>().add(
                                  ProfileEvent.changeImage(pickedImage.path));
                              imageValue.value = pickedImage.path;
                            }
                          }
                        } catch (e) {
                          log(e.toString());
                        }
                      },
                      child: CircleAvatar(
                        radius: Responsive.width(5.3, context),
                        backgroundColor: colors.iconBg,
                        child: Image.asset(cameraIcon),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(Responsive.width(3.7, context)),
                child: Column(
                  children: [
                    EditProfileCcenter(
                      nameValidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter valid name';
                        }
                        return null;
                      },
                      emailValidator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.contains('@') ||
                            !value.contains('.')) {
                          return 'Invalid Email';
                        }
                        return null;
                      },
                      numberValidator: (value) {
                        if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                            .hasMatch(value!)) {
                          return 'Enter valid number';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: Responsive.height(4, context)),
                    CustomButton(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pop(context);
                          }
                        },
                        text: saveChangesBtn),
                    SizedBox(height: Responsive.height(2, context)),
                    CustomOutlinedButton(onTap: () => Navigator.pop(context))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ValueNotifier<String> imageValue = ValueNotifier('');
