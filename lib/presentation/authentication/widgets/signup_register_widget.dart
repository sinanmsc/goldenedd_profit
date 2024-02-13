import 'package:flutter/material.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/authentication/core/constants.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_textfield.dart';

class SignUpRegisterWidget extends StatelessWidget {
  const SignUpRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final spaces = AppTheme.of(context).spaces;
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
        SizedBox(height: spaces.space_500),
        const CustomTextField(
            hintText: hintTextOfNameTextField, headText: nameHeadText),
        SizedBox(height: spaces.space_400),
        const CustomTextField(
            hintText: hintTextOfEmailTextField, headText: emailHeadText),
        SizedBox(height: spaces.space_400),
        const CustomTextField(
            hintText: hintTextOfNumberTextField, headText: mobileNoHeadText),
      ],
    );
  }
}
