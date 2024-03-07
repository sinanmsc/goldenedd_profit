import 'package:flutter/material.dart';

import '../../domain/constants/deposit_constants.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_appbar.dart';
import 'deposit_detail.dart';
import 'widgets.dart/deposit_scheme_container.dart';
import 'widgets.dart/welcom_bonus_widget.dart';

class DepositPage extends StatelessWidget {
  const DepositPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;

    Gradient getGradient(int index) {
      if (deposits[index].title == 'Bronze Duck') {
        return gradients.bronse;
      } else if (deposits[index].title == 'Silver Duck') {
        return gradients.silver;
      } else if (deposits[index].title == 'Golden Duck') {
        return gradients.golden;
      } else if (deposits[index].title == 'Platinum Duck') {
        return gradients.platinum;
      } else if (deposits[index].title == 'Diamond Duck') {
        return gradients.diamond;
      } else {
        return gradients.titanium;
      }
    }

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(0, Responsive.height(9, context)),
          child: const CustomAppbar(title: depositAppbarTitle,isNeedBackButton: true),
        ),
        body: Padding(
          padding: EdgeInsets.all(Responsive.width(3.7, context)),
          child: Column(
            children: [
              const WelcomBonusWidget(),
              SizedBox(height: Responsive.height(2, context)),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      Gradient gradient = getGradient(index);

                      return GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DepositDetail(
                                  containerGradient: gradient,
                                  scheme: deposits[index]),
                            )),
                        child: DepositSchemContainer(
                          gradient: gradient,
                          title: deposits[index].title,
                          amount: deposits[index].amount,
                          profitAmount: deposits[index].profitAmount,
                          imagePath: deposits[index].imagePath,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                    itemCount: deposits.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
