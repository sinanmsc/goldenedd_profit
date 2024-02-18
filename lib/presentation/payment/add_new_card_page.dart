import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/payment/bloc/payment_bloc.dart';

import '../../domain/constants/auth_constants.dart';
import '../../domain/constants/payment_constents.dart';
import '../../domain/router/router.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class AddNewCard extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  AddNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final dateController = TextEditingController();
    final cardNoController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(0, 70),
          child: CustomAppbar(title: addCardAppbarTitle),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.width(3.7, context),
                vertical: Responsive.width(5, context)),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(paymentPageHead, style: typography.name),
                  SizedBox(height: Responsive.height(5, context)),
                  CustomTextField(
                    hintText: '0000 1111 2222 3333',
                    headText: txtCardNumber,
                    maxLength: 16,
                    validator: (value) {
                      if (value!.length < 16) {
                        return 'Enter a valid card number';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: Responsive.height(3, context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2.5,
                        child: CustomTextField(
                          hintText: '2028-02-22',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Invalid Date";
                            }
                            return null;
                          },
                          controller: dateController,
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedTime = await showDatePicker(
                              context: context,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2100),
                            );
                            dateController.text =
                                pickedTime.toString().split(" ")[0];
                          },
                          headText: txtExpiryDate,
                          maxLength: 10,
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.sizeOf(context).width / 2.5,
                          child: CustomTextField(
                            hintText: '123',
                            validator: (value) {
                              if (value!.length < 3) {
                                return 'Enter a valid CVV number';
                              }
                              return null;
                            },
                            headText: tctCVV,
                            maxLength: 4,
                          ))
                    ],
                  ),
                  SizedBox(height: Responsive.height(3, context)),
                  CustomTextField(
                    hintText: 'Name',
                    headText: txtNameOnCard,
                    maxLength: 25,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter valid name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: Responsive.height(5, context)),
                  CustomButton(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          context
                              .read<PaymentBloc>()
                              .add(PaymentEvent.addCard(cardNoController.text));
                          Navigator.pushNamed(
                            context,
                            RoutPaths.enterAmountPage,
                          );
                        }
                      },
                      text: continueBtnText)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
