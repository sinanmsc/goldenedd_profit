import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';

class ProfileTextField extends StatelessWidget {
  final String headText;
  final TextEditingController controller;
  final int maxLength;
  final String? Function(String?)? validator;
  const ProfileTextField({
    super.key,
    required this.headText,
    required this.controller,
    required this.maxLength,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    final typography = AppTheme.of(context).typography;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headText,
          style: typography.uiInvers,
        ),
        TextFormField(
          validator: validator,
          maxLength: maxLength,
          controller: controller,
          decoration: InputDecoration(
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
