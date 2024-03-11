import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_textfield.dart';

class SignInRegisterWidget extends StatelessWidget {
  final String? Function(String?)? emailValidator;
  final String? Function(String?)? passwordValidator;
  final TextEditingController emaiController;
  final TextEditingController passwordController;
  const SignInRegisterWidget(
      {super.key,
      required this.emaiController,
      required this.emailValidator,
      required this.passwordController,
      this.passwordValidator});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShaderMask(
          shaderCallback: (bounds) =>
              gradients.btnGradient.createShader(bounds),
          child: Text(signInText, style: typography.authHead),
        ),
        SizedBox(height: Responsive.height(5, context)),
        CustomTextField(
          maxLength: 20,
          controller: emaiController,
          headText: emailHeadText,
          hintText: hintTextOfEmailTextField,
          validator: emailValidator,
        ),
        SizedBox(height: Responsive.height(2, context)),
        CustomTextField(
          maxLength: 15,
          controller: passwordController,
          headText: passwordHeadText,
          hintText: hintTextOfPasswordlTextField,
          validator: passwordValidator,
        )
      ],
    );
  }
}
