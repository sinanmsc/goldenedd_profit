import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/authentication/bloc/auth_bloc.dart';
import 'package:goldenegg_profit/domain/models/profile/profile_model.dart';
import 'package:goldenegg_profit/domain/models/profile/proof_model.dart';
import 'package:goldenegg_profit/domain/router/router.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_appbar_widget.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/signin_register_widger.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/auth_header_widget.dart';
import 'package:goldenegg_profit/presentation/authentication/widgets/signup_register_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';

import '../../domain/constants/profile_constants.dart';

class AuthPage extends StatelessWidget {
  final signinMobileNoController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final signupMobileNoController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  AuthPage({super.key});

  static const routerPath = '/auth_page';
  static const routerName = 'Auth Page';

  @override
  Widget build(BuildContext context) {
    final isSigned = context.watch<AuthBloc>().state.isSigned;
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
                        mobileNoController: signinMobileNoController,
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
                        addressController: addressController,
                        passwordController: passwordController,
                        emailController: emailController,
                        mobileController: signupMobileNoController,
                        nameController: nameController,
                        namevalidator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Enter name';
                          }
                        },
                        emailvalidator: (value) {
                          if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value!)) {
                            return 'Invalid Email';
                          }
                        },
                        mobilevalidator: (value) {
                          if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                              .hasMatch(value!)) {
                            return 'Enter valid number';
                          }
                        },
                        addressValidator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Enter address';
                          }
                        },
                        passwordValidator: (value) {
                          if (value == null || value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          }
                        },
                      ),
                SizedBox(height: Responsive.height(8.5, context)),
                CustomButton(
                  text: sendOtpBtnText,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      log('noxf' + signinMobileNoController.text);
                      context.read<AuthBloc>().add(
                          AuthEvent.sendOtp(signinMobileNoController.text));
                      if (isSigned) {
                        mobNumber.value = signinMobileNoController.text;
                        Navigator.pushNamed(
                            context, RoutPaths.authVerification);
                      }
                      if (!isSigned) {
                        mobNumber.value = signupMobileNoController.text;
                        profileData.value = ProfileModel(
                          userName: nameController.text,
                          email: emailController.text,
                          adsress: addressController.text,
                          password: passwordController.text,
                          mobileNo: signupMobileNoController.text,
                          proof: ProofModel(proofType: '', proofNo: ''),
                        );
                        Navigator.pushNamed(
                            context, RoutPaths.authVerification);
                      }
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

ValueNotifier<String> mobNumber = ValueNotifier('');

ValueNotifier<ProfileModel> profileData = ValueNotifier(ProfileModel(
    proof: ProofModel(proofType: '', proofNo: ''),
    userName: demoUserName,
    email: demoEmail,
    adsress: demoAddress,
    password: demoPassword,
    mobileNo: mobNumber.value));
