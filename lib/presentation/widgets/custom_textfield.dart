import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

class CustomTextField extends StatelessWidget {
  final String? headText;
  final String? hintText;
  final TextEditingController? controller;
  const CustomTextField(
      {super.key, this.headText, this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    // final spaces = AppTheme.of(context).spaces;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headText != null
            ? Text(headText!, style: typography.ui)
            : const SizedBox(),
        SizedBox(height: Responsive.height(1.5, context)),
        TextField(
          controller: controller,
          decoration: InputDecoration(
              fillColor: colors.textField,
              filled: true,
              contentPadding: EdgeInsets.all(Responsive.width(2.7, context)),
              border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(Responsive.width(3.7, context)),
                  borderSide: BorderSide.none),
              hintText: hintText,
              hintStyle: typography.uiInvers),
        ),
      ],
    );
  }
}
