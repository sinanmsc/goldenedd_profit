import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/profile/widgets/profile_textfield_widget.dart';

class EditProfileCcenter extends StatelessWidget {
  const EditProfileCcenter({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    usernameController.text = demoUserName;
    final emailController = TextEditingController();
    emailController.text = demoEmail;
    final phoneController = TextEditingController();
    phoneController.text = demonumber;
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
