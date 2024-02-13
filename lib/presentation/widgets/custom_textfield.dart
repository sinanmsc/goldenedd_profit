import 'package:flutter/material.dart';
import 'package:goldenegg_profit/core/theme/theme_helper.dart';

class CustomTextField extends StatelessWidget {
  final String? headText;
  final String? hintText;
  const CustomTextField({super.key, this.headText, this.hintText});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    final spaces = AppTheme.of(context).spaces;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headText != null
            ? Text(headText!, style: typography.ui)
            : const SizedBox(),
        SizedBox(height: spaces.space_200),
        TextField(
          decoration: InputDecoration(
              fillColor: colors.textField,
              filled: true,
              contentPadding: EdgeInsets.all(spaces.space_150),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(spaces.space_200),
                  borderSide: BorderSide.none),
              hintText: hintText,
              hintStyle: typography.smallInverse),
        ),
      ],
    );
  }
}
