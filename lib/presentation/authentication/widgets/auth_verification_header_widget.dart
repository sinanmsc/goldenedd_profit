import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/authentication/auth_page.dart';

import '../../../application/authentication/bloc/auth_bloc.dart';

class AuthVerificationHeader extends StatelessWidget {
  // final String number;
  const AuthVerificationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    // final spaces = AppTheme.of(context).spaces;

    final number = context.read<AuthBloc>().state.mobileNo;
    log('num$number');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShaderMask(
          shaderCallback: (bounds) =>
              gradients.btnGradient.createShader(bounds),
          child: Text(
            authVerificationHead,
            style: typography.authHead,
          ),
        ),
        SizedBox(height: Responsive.height(2.3, context)),
        Text(
          authVerificationSubHead,
          style: typography.ui,
        ),
        ValueListenableBuilder(
            valueListenable: mobNumber,
            builder: (context, value, child) {
              return Text(
                '+91 $value',
                style: typography.number,
              );
            })
        // BlocBuilder<AuthBloc, AuthState>(
        //   builder: (context, state) {
        //     log('c :' + state.mobileNo);
        //     return Text(
        //       '+91 ${state.mobileNo}',
        //       style: typography.number,
        //     );
        //   },
        // ),
      ],
    );
  }
}
