import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_textfield.dart';

class SignUpRegisterWidget extends StatelessWidget {
  const SignUpRegisterWidget({super.key});

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
        const CustomTextField(
            hintText: hintTextOfNameTextField, headText: nameHeadText),
        SizedBox(height: Responsive.height(3.5, context)),
        const CustomTextField(
            hintText: hintTextOfEmailTextField, headText: emailHeadText),
        SizedBox(height: Responsive.height(3.5, context)),
        const CustomTextField(
            hintText: hintTextOfNumberTextField, headText: mobileNoHeadText),
      ],
    );
  }
}
