import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/app_assets.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/router/router.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';
import 'package:goldenegg_profit/presentation/widgets/shadermasking.dart';

class SuccessfullRegistrationPage extends StatelessWidget {
  const SuccessfullRegistrationPage({super.key});

  static const routerPath = '/auth_success';
  static const routerName = 'Auth Success Page';

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Responsive.width(3.7, context)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: MediaQuery.sizeOf(context).width / 2,
                    padding: EdgeInsets.all(Responsive.width(6, context)),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AppAssets.getStartAssets.authSuccessMsg)),
                    child: Padding(
                      padding: EdgeInsets.all(Responsive.width(1, context)),
                      child: CustomShaderMask(
                        gradient: gradients.btnGradient,
                        child: const Text(
                          successRegistrationMsg,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  )),
              AppAssets.getStartAssets.authSuccessImg,
              SizedBox(height: Responsive.height(3, context)),
              Text(
                authSuccessText,
                style: typography.bigWhite,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Responsive.height(5.8, context)),
              CustomButton(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(context,
                      RoutPaths.mainPage, (Route<dynamic> route) => false),
                  child: Text(getStartText, style: typography.btn))
            ],
          ),
        ),
      ),
    );
  }
}

ValueNotifier<bool> isSigned = ValueNotifier(false);
