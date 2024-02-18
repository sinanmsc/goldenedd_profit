import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_textfield.dart';

class SignUpRegisterWidget extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController mobileController;
  final String? Function(String?)? namevalidator;
  final String? Function(String?)? emailvalidator;
  final String? Function(String?)? mobilevalidator;
  const SignUpRegisterWidget({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.mobileController,
    this.emailvalidator,
    this.mobilevalidator,
    this.namevalidator,
  });

  @override
  Widget build(BuildContext context) {
    // final spaces = AppTheme.of(context).spaces;
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShaderMask(
          shaderCallback: (bounds) =>
              gradients.btnGradient.createShader(bounds),
          child: Text(signUpText, style: typography.authHead),
        ),
        SizedBox(height: Responsive.height(5, context)),
        CustomTextField(
            controller: nameController,
            hintText: hintTextOfNameTextField,
            headText: nameHeadText,
            validator: namevalidator,
            maxLength: 25),
        SizedBox(height: Responsive.height(3.5, context)),
        CustomTextField(
            controller: emailController,
            hintText: hintTextOfEmailTextField,
            headText: emailHeadText,
            validator: emailvalidator,
            maxLength: 25),
        SizedBox(height: Responsive.height(3.5, context)),
        CustomTextField(
            // keyboardType: TextInputType.number,
            controller: mobileController,
            hintText: hintTextOfNumberTextField,
            headText: mobileNoHeadText,
            validator: mobilevalidator,
            maxLength: 10),
      ],
    );
  }
}
