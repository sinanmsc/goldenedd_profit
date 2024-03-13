import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../application/profile/bloc/profile_bloc.dart';
import '../../domain/constants/profile_constants.dart';
import '../../domain/models/profile/profile_model.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../authentication/auth_page.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/gradient_appbar_title_widget.dart';
import '../widgets/gradient_arrow_widget.dart';
import 'widgets/camera_widget.dart';
import 'widgets/edit_profile_center_widget.dart';
import 'widgets/kyc_verification_widget.dart';
import 'widgets/profile_header_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  static const routerPath = '/edit_profile';
  static const routerName = 'Edit Profile';

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final adddressController = TextEditingController();
  final passwordController = TextEditingController();
  final proofController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (savedImageValue.value.isNotEmpty) {
      imageValue.value = savedImageValue.value;
    }
    if (savedProofImage.value.isNotEmpty) {
      proofImage.value = savedProofImage.value;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final imagePicker = ImagePicker();

    void chooseProfilePic() async {
      try {
        XFile? pickedImage =
            await imagePicker.pickImage(source: ImageSource.camera);
        if (pickedImage != null) {
          if (context.mounted) {
            context
                .read<ProfileBloc>()
                .add(ProfileEvent.changeImage(pickedImage.path));
            imageValue.value = pickedImage.path;
          }
        }
      } catch (e) {
        log(e.toString());
      }
    }

    final colors = AppTheme.of(context).colors;
    final typography = AppTheme.of(context).typography;
    return Scaffold(
      appBar: AppBar(
        title: const GradientAppbarTitle(titleText: editProfileAopbarTitle),
        leading: GradientArrowWidget(
          onPressed: () {
            imageValue.value = savedImageValue.value;
            if (savedProofImage.value.isNotEmpty) {
              proofImage.value = savedProofImage.value;
            }

            Navigator.pop(context);
          },
        ),
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
                    child: CameraWidget(onTap: () => chooseProfilePic()),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(Responsive.width(3.7, context)),
                child: Column(
                  children: [
                    EditProfileCcenter(
                      emailController: emailController,
                      phoneController: phoneController,
                      usernameController: usernameController,
                      adressController: adddressController,
                      passwordController: passwordController,
                      nameValidator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter valid name';
                        }
                      },
                      emailValidator: (value) {
                        if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!)) {
                          return 'Invalid Email';
                        }
                      },
                      numberValidator: (value) {
                        if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                            .hasMatch(value!)) {
                          return 'Enter valid number';
                        }
                      },
                      addressValidator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Enter address';
                        }
                      },
                      passwordValidator: (value) {
                        if (value == null || value.length < 8) {
                          return 'Password must be at least 8 characters long';
                        }
                      },
                    ),
                    SizedBox(height: Responsive.height(4, context)),
                    profileData.value.proofNo.isEmpty
                        ? const SizedBox()
                        : KYCVerification(
                            proofController: proofController,
                          ),
                    SizedBox(height: Responsive.height(2, context)),
                    CustomButton(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            if (proofController.text.isEmpty) {
                              proofImage.value = '';
                            }
                            profileData.value = ProfileModel(
                                proofType: proofType.value,
                                    proofNo: proofController.text,
                                adsress: adddressController.text,
                                password: passwordController.text,
                                userName: usernameController.text,
                                email: emailController.text,
                                mobileNo: phoneController.text);
                            log(profileData.value.toString());
                            savedImageValue.value = imageValue.value;
                            savedProofImage.value = proofImage.value;
                            Navigator.pop(context);
                          }
                        },
                        child:  
                        Text(saveChangesBtn, style: typography.btn)
                        ),
                    SizedBox(height: Responsive.height(2, context)),
                    CustomOutlinedButton(
                        onTap: () {
                          imageValue.value = savedImageValue.value;
                          if (savedProofImage.value.isNotEmpty) {
                            log('savedproofnot');
                            proofImage.value = savedProofImage.value;
                          }
                          Navigator.pop(context);
                        },
                        title: cancelBtn)
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
