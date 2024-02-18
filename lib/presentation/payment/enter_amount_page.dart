import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/app_assets.dart';
import 'package:goldenegg_profit/domain/constants/auth_constants.dart';
import 'package:goldenegg_profit/domain/constants/payment_constents.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_appbar.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_textfield.dart';
import 'package:goldenegg_profit/presentation/widgets/payment_container.dart';

import '../../domain/utils/responsive_utils.dart';

class EnterAmountPage extends StatelessWidget {
  final String number;
  const EnterAmountPage({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    // final cardNumber = ;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(0, 70),
          child: CustomAppbar(title: enterAmountAppbarTitle),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.width(3.7, context),
              vertical: Responsive.width(7, context)),
          child: Column(
            children: [
              PaymentContainer(
                title: txtPaymentMethodTitle,
                subTitle: txtPaymentMethodSubTitle + number,
                child: Container(
                  margin: EdgeInsets.only(right: Responsive.width(3, context)),
                  padding: EdgeInsets.all(Responsive.width(1.5, context)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      Responsive.width(3, context),
                    ),
                  ),
                  child: AppAssets.paymentAssets.newBankImg,
                ),
              ),
              SizedBox(height: Responsive.height(4, context)),
              const CustomTextField(
                headText: 'Amount',
                maxLength: 5,
                hintText: '1000',
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: Responsive.height(6, context)),
              CustomButton(
                  onTap: () => Navigator.pop(context), text: continueBtnText)
            ],
          ),
        ),
      ),
    );
  }
}
