import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/models/profile_model.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/profile/widgets/profile_textfield_widget.dart';

class EditProfileCcenter extends StatelessWidget {
  final ProfileModel profileModel;

  const EditProfileCcenter({super.key, required this.profileModel});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    usernameController.text = profileModel.userName;
    final emailController = TextEditingController();
    emailController.text = profileModel.email;
    final phoneController = TextEditingController();
    phoneController.text = profileModel.number;
    return Column(
      children: [
        ProfileTextField(
            headText: usernameHead, controller: usernameController),
        SizedBox(height: Responsive.height(3, context)),
        ProfileTextField(headText: emailHead, controller: emailController),
        SizedBox(height: Responsive.height(3, context)),
        ProfileTextField(headText: mobileNoHead, controller: phoneController),
      ],
    );
  }
}
