import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/main_page/main_page.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';

class SuccessfullRegistrationPage extends StatelessWidget {
  const SuccessfullRegistrationPage({super.key});

  static const routerPath = '/auth_success';
  static const routerName = 'Auth Success Page';

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Responsive.width(3.7, context)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(authSuccessImage),
              SizedBox(height: Responsive.height(3, context)),
              Text(
                authSuccessText,
                style: typography.bigWhite,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: Responsive.height(5.8, context)),
              CustomButton(
                  onTap: () => context.push(MainPage.routerPath),
                  text: getStartText)
            ],
          ),
        ),
      ),
    );
  }
}
