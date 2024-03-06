import 'package:flutter/material.dart';

import '../../../domain/theme/theme_helper.dart';

class WithdrawalTextField extends StatelessWidget {
  final String headText;
  final String hintText;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final int? maxLength;
  const WithdrawalTextField({
    super.key,
    required this.headText,
    required this.hintText,
    required this.controller,
    this.maxLength,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headText, style: typography.withdrawalTextfieldHead),
        TextFormField(
          keyboardType: keyboardType,
          controller: controller,
          maxLength: maxLength,
          decoration: InputDecoration(
              counterText: '',
              hintText: hintText,
              hintStyle: typography.withdrawalTextfieldHintText,
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: colors.primary,
                width: 0.5,
              ))),
        ),
      ],
    );
  }
}
