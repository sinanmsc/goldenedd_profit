import 'package:flutter/material.dart';

import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';

class OTPTextField extends StatelessWidget {
  const OTPTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 6,
      child: TextField(
          // controller: controller,
          maxLength: 1,
          keyboardType: TextInputType.number,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          style: typography.textField,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            counterText: '',
            fillColor: colors.textField,
            filled: true,
            contentPadding: EdgeInsets.all(Responsive.width(2.7, context)),
            border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(Responsive.width(3.7, context)),
                borderSide: BorderSide.none),
          )),
    );
  }
}
