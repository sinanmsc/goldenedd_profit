import 'package:flutter/material.dart';

import '../../../domain/constants/deposit_constants.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';
import '../../widgets/forward_button.dart';

class DepositSchemContainer extends StatelessWidget {
  final String title;
  final String price;
  final Gradient gradient;
  const DepositSchemContainer({super.key, required this.gradient,required this.price,required this.title,});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(Responsive.width(0.3, context)),
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(Responsive.width(3.5, context)),
              gradient: gradient),
          child: Container(
            padding: EdgeInsets.all(Responsive.width(3.7, context)),
            decoration: BoxDecoration(
              color: const Color(0xFF181818),
              borderRadius:
                  BorderRadius.circular(Responsive.width(3.5, context)),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) => gradient.createShader(bounds),
                      child: Text(
                        title,
                        style: typography.name,
                      ),
                    ),
                    SizedBox(width: Responsive.width(20, context)),
                    Container(
                      padding: EdgeInsets.all(Responsive.width(0.3, context)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              Responsive.width(3.5, context)),
                          gradient: gradient),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF181818),
                          borderRadius: BorderRadius.circular(
                            Responsive.width(3.5, context),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: Responsive.width(2.8, context),
                          horizontal: Responsive.width(4, context),
                        ),
                        child: ShaderMask(
                            shaderCallback: (bounds) =>
                                gradient.createShader(bounds),
                            child: Text(
                              price,
                              style: typography.appBarTitle,
                            )),
                      ),
                    )
                  ],
                ),
                SizedBox(height: Responsive.height(2, context)),
                Text(
                  depositDiscription,
                  style: typography.smallDiscription,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
        Positioned(
            right: Responsive.width(-5, context),
            top: Responsive.height(5, context),
            child: const ForwardButton())
      ],
    );
  }
}
