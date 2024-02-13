import 'package:flutter/material.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/authentication/core/constants.dart';

class SignInRegisterWidget extends StatelessWidget {
  const SignInRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final spaces = AppTheme.of(context).spaces;
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    final colors = AppTheme.of(context).colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShaderMask(
          shaderCallback: (bounds) =>
              gradients.btnGradient.createShader(bounds),
          child: Text(signInText, style: typography.authHead),
        ),
        SizedBox(height: spaces.space_500),
        Text(mobileNoHeadText, style: typography.ui),
        SizedBox(height: spaces.space_200),
        TextField(
          decoration: InputDecoration(
              fillColor: colors.textField,
              filled: true,
              contentPadding: EdgeInsets.all(spaces.space_150),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(spaces.space_200),
                  borderSide: BorderSide.none),
              hintText: hintTextOfNumberTextField,
              hintStyle: typography.small),
        ),
      ],
    );
  }
}
