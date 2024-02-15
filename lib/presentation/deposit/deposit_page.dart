import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';

import '../../domain/constants/deposit_constants.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_appbar.dart';
import 'widgets.dart/deposit_scheme_container.dart';

class DepositPage extends StatelessWidget {
  const DepositPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(0, Responsive.height(9, context)),
          child: const CustomAppbar(title: depositAppbarTitle),
        ),
        body: Padding(
          padding: EdgeInsets.only(
              left: Responsive.width(3.7, context),
              right: Responsive.width(8, context)),
          child: Column(
            children: [
              SizedBox(height: Responsive.height(5, context)),
              DepositSchemContainer(
                gradient: gradients.blue,
                title: basicTitle,
                price: basicPrice,
              ),
              SizedBox(height: Responsive.height(3, context)),
              DepositSchemContainer(
                gradient: gradients.greean,
                title: standardTitle,
                price: standardPrice,
              ),
              SizedBox(height: Responsive.height(3, context)),
              DepositSchemContainer(
                gradient: gradients.red,
                title: premiumstandardTitle,
                price: premiumstandardPrice,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
