import 'package:flutter/material.dart';
import 'package:goldenegg_profit/presentation/widgets/payment_successful_page.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';

import '../../domain/constants/withdrawal_constants.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_snackbar.dart';
import 'widgets/withdrawal_header.dart';
import 'widgets/withdrawal_textfield.dart';

class WithdrawalPage extends StatelessWidget {
  final walletAdrressController = TextEditingController();
  final amountController = TextEditingController();
  WithdrawalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    return SafeArea(
        child: Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(0, 70),
          child: CustomAppbar(title: withdrawalAppbarTitle)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Responsive.width(3.7, context)),
          child: Column(
            children: [
              const WithdrawalHeader(),
              SizedBox(height: Responsive.height(5, context)),
              WithdrawalTextField(
                maxLength: 15,
                hintText: withdrawalAddresshintText,
                headText: withdrawalAddressHead,
                controller: walletAdrressController,
              ),
              SizedBox(height: Responsive.height(4, context)),
              WithdrawalTextField(
                keyboardType: TextInputType.number,
                maxLength: 5,
                headText: withdrawalEnterAmountHead,
                hintText: withdrawalEnterAmounthintText,
                controller: amountController,
              ),
              SizedBox(height: Responsive.height(8, context)),
              CustomButton(
                  onTap: () {
                    if (walletAdrressController.text.trim().isEmpty) {
                      customSnackBar(context, withdrawalAddresshintText);
                    } else if (amountController.text.trim().isEmpty) {
                      customSnackBar(context, withdrawalEnterAmountHead);
                    } else if (double.parse(amountController.text) < 10) {
                      customSnackBar(context, 'Minimum amount is 10 \$');
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentSuccessfulPage(
                                  topMsg: Text(
                                    withdrawalPaymentSuccessfulTopMsg,
                                    style: typography.smallDiscription,
                                  ),
                                  successMsg: withdrawalPaymentSuccessfulMsg)));
                    }
                  },
                  text: withdrawalBtnTxt)
            ],
          ),
        ),
      ),
    ));
  }
}
