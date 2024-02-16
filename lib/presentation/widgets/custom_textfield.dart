import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

class CustomTextField extends StatelessWidget {
  final String? headText;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int maxLength;
  final bool readOnly;
  final void Function()? onTap;
  const CustomTextField(
      {super.key,
      this.headText,
      this.onTap,
      this.hintText,
      this.controller,
      this.keyboardType,
      this.validator,
      this.readOnly = false,
      required this.maxLength});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headText != null
            ? Text(headText!, style: typography.ui)
            : const SizedBox(),
        SizedBox(height: Responsive.height(1.5, context)),
        TextFormField(
          onTap: () => onTap,
          keyboardType: keyboardType,
          validator: validator,
          controller: controller,
          maxLength: maxLength,
          readOnly: readOnly,
          decoration: InputDecoration(
              counterText: '',
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
