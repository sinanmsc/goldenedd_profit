import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';

class ProfileTextField extends StatelessWidget {
  final String headText;
  final TextEditingController controller;
  const ProfileTextField({
    super.key,
    required this.headText,
    required this.controller,
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
        TextField(
          controller: controller,
          decoration: InputDecoration(
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
