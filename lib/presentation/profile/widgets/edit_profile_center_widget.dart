import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/profile/widgets/profile_textfield_widget.dart';

import '../../authentication/auth_page.dart';

class EditProfileCcenter extends StatefulWidget {
  final String? Function(String?)? nameValidator;
  final String? Function(String?)? emailValidator;
  final String? Function(String?)? numberValidator;
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  const EditProfileCcenter({
    super.key,
    required this.nameValidator,
    required this.emailValidator,
    required this.numberValidator,
    required this.emailController,
    required this.phoneController,
    required this.usernameController,
  });

  @override
  State<EditProfileCcenter> createState() => _EditProfileCcenterState();
}

class _EditProfileCcenterState extends State<EditProfileCcenter> {
  @override
  void initState() {
    widget.usernameController.text = profileData.value.userName;
    widget.emailController.text = profileData.value.email;
    widget.phoneController.text = profileData.value.mobileNo;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTextField(
            maxLength: 25,
            validator: widget.nameValidator,
            headText: usernameHead,
            controller: widget.usernameController),
        SizedBox(height: Responsive.height(3, context)),
        ProfileTextField(
          headText: emailHead,
          validator: widget.emailValidator,
          controller: widget.emailController,
          maxLength: 25,
        ),
        SizedBox(height: Responsive.height(3, context)),
        ProfileTextField(
            keyboardType: TextInputType.number,
            validator: widget.numberValidator,
            headText: mobileNoHead,
            controller: widget.phoneController,
            maxLength: 10),
      ],
    );
  }
}
