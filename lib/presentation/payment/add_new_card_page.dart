import 'package:flutter/material.dart';

import '../../domain/constants/auth_constants.dart';
import '../../domain/constants/payment_constents.dart';
import '../../domain/router/router.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(0, 70),
          child: CustomAppbar(title: addCardAppbarTitle),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.width(3.7, context),
              vertical: Responsive.width(5, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(paymentPageHead, style: typography.name),
              SizedBox(height: Responsive.height(5, context)),
              const CustomTextField(headText: txtCardNumber),
              SizedBox(height: Responsive.height(3, context)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 2.5,
                    child: const CustomTextField(headText: txtExpiryDate),
                  ),
                  SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2.5,
                      child: const CustomTextField(headText: tctCVV))
                ],
              ),
              SizedBox(height: Responsive.height(3, context)),
              const CustomTextField(headText: txtNameOnCard),
              SizedBox(height: Responsive.height(5, context)),
              CustomButton(
                  onTap: () => Navigator.pushNamed(
                        context,
                        RoutPaths.enterAmountPage,
                      ),
                  text: continueBtnText)
            ],
          ),
        ),
      ),
    );
  }
}
