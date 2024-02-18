import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/profile/widgets/profile_textfield_widget.dart';

class EditProfileCcenter extends StatelessWidget {
  final String? Function(String?)? nameValidator;
  final String? Function(String?)? emailValidator;
  final String? Function(String?)? numberValidator;
  const EditProfileCcenter({
    super.key,
    required this.nameValidator,
    required this.emailValidator,
    required this.numberValidator,
  });

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
            maxLength: 25,
            validator: nameValidator,
            headText: usernameHead,
            controller: usernameController),
        SizedBox(height: Responsive.height(3, context)),
        ProfileTextField(
          headText: emailHead,
          validator: emailValidator,
          controller: emailController,
          maxLength: 25,
        ),
        SizedBox(height: Responsive.height(3, context)),
        ProfileTextField(
            keyboardType: TextInputType.number,
            validator: numberValidator,
            headText: mobileNoHead,
            controller: phoneController,
            maxLength: 10),
      ],
    );
  }
}
