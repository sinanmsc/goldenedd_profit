import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_btn_widget.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // final spaces = AppTheme.of(context).spaces;
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.width(1, context),
          vertical: Responsive.width(1, context)),
      decoration: BoxDecoration(
        gradient: gradients.btnGradient,
        borderRadius: BorderRadius.circular(Responsive.width(3.7, context)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AuthBtns(
            color: context.watch<AuthBloc>().state.isSigned
                ? Colors.black
                : Colors.transparent,
            widget: context.watch<AuthBloc>().state.isSigned
                ? ShaderMask(
                    shaderCallback: (bounds) =>
                        gradients.btnGradient.createShader(bounds),
                    child: const Text(signInText))
                : Text(
                    signInText,
                    style: typography.authBtn,
                  ),
            onTap: () =>
                context.read<AuthBloc>().add(const AuthEvent.toSignIn()),
          ),
          AuthBtns(
            color: context.watch<AuthBloc>().state.isSigned
                ? Colors.transparent
                : Colors.black,
            widget: context.watch<AuthBloc>().state.isSigned
                ? Text(
                    signUpText,
                    style: typography.authBtn,
                  )
                : ShaderMask(
                    shaderCallback: (bounds) =>
                        gradients.btnGradient.createShader(bounds),
                    child: const Text(signUpText)),
            onTap: () =>
                context.read<AuthBloc>().add(const AuthEvent.toSignUp()),
          ),
        ],
      ),
    );
  }
}
