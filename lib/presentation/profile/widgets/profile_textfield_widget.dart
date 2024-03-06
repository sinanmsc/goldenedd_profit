import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';

class ProfileTextField extends StatelessWidget {
  final String? headText;
  final TextEditingController controller;
  final int? maxLength;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final int? maxLines;
  final String? hintText;
  const ProfileTextField({
    super.key,
    this.headText,
    required this.controller,
    this.maxLength,
    this.validator,
    this.keyboardType,
    this.maxLines = 1,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    final typography = AppTheme.of(context).typography;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headText == null
            ? const SizedBox()
            : Text(
                headText!,
                style: typography.uiInvers,
              ),
        TextFormField(
          maxLines: maxLines,
          keyboardType: keyboardType,
          validator: validator,
          maxLength: maxLength,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: typography.uiInvers,
            counterText: '',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: colors.bg,
                width: 0.2,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: colors.bg,
                width: 0.2,
              ),
            ),
          ),
        )
      ],
    );
  }
}
