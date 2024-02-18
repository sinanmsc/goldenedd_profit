import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_textfield.dart';

class SignInRegisterWidget extends StatelessWidget {
  final String? Function(String?)? validator;
  final TextEditingController mobileNoController;
  const SignInRegisterWidget({super.key, required this.mobileNoController,required this.validator});

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
          maxLength: 10,
          controller: mobileNoController,
          keyboardType: TextInputType.number,
          headText: mobileNoHeadText,
          hintText: hintTextOfNumberTextField,
          validator: validator,
        )
      ],
    );
  }
}
