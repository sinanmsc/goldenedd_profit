import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goldenegg_profit/presentation/widgets/shadermasking.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import 'forward_button.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;

    return Container(
      margin: EdgeInsets.only(bottom: Responsive.width(4, context)),
      width: double.infinity,
      padding: EdgeInsets.all(Responsive.width(2.5, context)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Responsive.width(4, context)),
        gradient: gradients.payBackground,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              right: Responsive.width(0.4, context),
              left: Responsive.width(2.4, context),
              top: Responsive.width(0.4, context),
              bottom: Responsive.width(1.2, context),
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('asset/purchase_bg.png'))),
            child: Image.asset(
              'asset/pduck_png.png',
              fit: BoxFit.fill,
            ),
          ),
          CustomShaderMask(
              gradient: gradients.btnGradient,
              child: Text('Purchase Ducks',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
          const ForwardButton()
        ],
      ),
    );
  }
}
