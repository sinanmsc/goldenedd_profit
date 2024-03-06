import 'package:flutter/material.dart';
import 'package:goldenegg_profit/presentation/widgets/outlined_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/shadermasking.dart';

import '../../domain/constants/wallet_constants.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/dividerr.dart';
import '../widgets/gradient_appbar_title_widget.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(0, 80),
          child: Container(
            padding: EdgeInsets.all(Responsive.width(3.7, context)),
            decoration: BoxDecoration(
              gradient: gradients.background,
            ),
            child: const Row(
              children: [GradientAppbarTitle(titleText: walletAppbarTitle)],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(Responsive.width(3.7, context)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedContainer(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      vertical: Responsive.width(10, context),
                      horizontal: Responsive.width(15, context)),
                  child: Column(
                    children: [
                      CustomShaderMask(
                          gradient: gradients.btnGradient,
                          child:
                              Text(walletHead, style: typography.walletHead)),
                      SizedBox(height: Responsive.height(3, context)),
                      CustomShaderMask(
                        gradient: gradients.btnGradient,
                        child:  const DottedDivider(color: Colors.white),
                      ),
                      SizedBox(height: Responsive.height(4, context)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('asset/GoldenEggpng.png'),
                            SizedBox(width: Responsive.width(2, context)),
                            Text(walletAmount, style: typography.walletAmount),
                          ])
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
