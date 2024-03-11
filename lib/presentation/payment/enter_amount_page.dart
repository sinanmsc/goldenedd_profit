import 'package:flutter/material.dart';

import '../../domain/constants/auth_constants.dart';
import '../../domain/constants/payment_constents.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/payment_container.dart';

class EnterAmountPage extends StatelessWidget {
  final String number;
  const EnterAmountPage({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    // final cardNumber = ;
    final typography = AppTheme.of(context).typography;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(0, 70),
          child: CustomAppbar(
            title: enterAmountAppbarTitle,
            isNeedBackButton: true,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.width(3.7, context),
              vertical: Responsive.width(7, context)),
          child: Column(
            children: [
              const PaymentContainer(),
              SizedBox(height: Responsive.height(4, context)),
              const CustomTextField(
                headText: 'Amount',
                maxLength: 5,
                hintText: '1000',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: Responsive.height(6, context)),
              CustomButton(
                  onTap: () => Navigator.pop(context),
                  child: Text(continueBtnText, style: typography.btn))
            ],
          ),
        ),
      ),
    );
  }
}
