import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';
import 'package:goldenegg_profit/domain/router/router.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_appbar_widget.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/signin_register_widger.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_header_widget.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/signup_register_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';

class AuthPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  AuthPage({super.key});

  static const routerPath = '/auth_page';
  static const routerName = 'Auth Page';

  @override
  Widget build(BuildContext context) {
    final mobileNoController = TextEditingController();
    final nameNoController = TextEditingController();
    final emailNoController = TextEditingController();
    return Scaffold(
      appBar:
          const PreferredSize(preferredSize: Size(0, 50), child: AuthAppBar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Responsive.width(4.6, context)),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AuthHeader(),
                SizedBox(height: Responsive.height(4, context)),
                context.watch<AuthBloc>().state.isSigned
                    ? SignInRegisterWidget(
                        mobileNoController: mobileNoController,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 10) {
                            return 'Enter valid number';
                          }
                          return null;
                        },
                      )
                    : SignUpRegisterWidget(
                        emailController: emailNoController,
                        mobileController: mobileNoController,
                        nameController: nameNoController,
                        namevalidator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter valid name';
                          }
                          return null;
                        },
                        emailvalidator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !value.contains('@') ||
                              !value.contains('.')) {
                            return 'Invalid Email';
                          }
                          return null;
                        },
                        mobilevalidator: (value) {
                          if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                              .hasMatch(value!)) {
                            return 'Enter valid number';
                          }
                          return null;
                        },
                      ),
                SizedBox(height: Responsive.height(8.5, context)),
                CustomButton(
                  text: sendOtpBtnText,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      // log('noxf' + mobileNoController.text);
                      context
                          .read<AuthBloc>()
                          .add(AuthEvent.sendOtp(emailNoController.text));
                      Navigator.pushNamed(context, RoutPaths.authVerification);
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
