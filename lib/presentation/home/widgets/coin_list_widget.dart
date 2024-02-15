import 'package:flutter/material.dart';

import '../../../domain/models/coin_model.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';
import 'coin_container.dart';

class CoinList extends StatelessWidget {
  final List<CoinModel> list;
  final String title;
  const CoinList({
    super.key,
    required this.title,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShaderMask(
          shaderCallback: (bounds) =>
              gradients.btnGradient.createShader(bounds),
          child: Text(title, style: typography.boldTitle),
        ),
        SizedBox(height: Responsive.height(0.7, context)),
        SizedBox(
          height: Responsive.height(15, context),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CoinContainer(
                  amount: list[index].amount,
                  coin: list[index].coin,
                  coinImage: list[index].coinImage,
                  graphImg: list[index].graphImg,
                  isGreen: list[index].isGreen,
                  percentage: list[index].percentage);
            },
            separatorBuilder: (context, index) =>
                SizedBox(width: Responsive.width(2, context)),
            itemCount: 3,
          ),
        ),
      ],
    );
  }
}