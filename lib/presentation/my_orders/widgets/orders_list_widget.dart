import 'package:flutter/material.dart';

import '../../../domain/constants/common_constants.dart';
import '../../../domain/constants/my_orders_constants.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';
import '../../widgets/doller_widget.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    return ListView.separated(
        itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(Responsive.width(3.7, context)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        orderList[index].isGoldDuck
                            ? 'asset/ducks/gold.png'
                            : 'asset/ducks/bronze.png',
                        width: Responsive.width(12, context),
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                          width: Responsive.width(2.5, context)),
                      Column(
                        children: [
                          Text(
                              orderList[index].isGoldDuck
                                  ? 'Gold Duck'
                                  : 'Bronse Duck',
                              style: typography.duckTitle),
                          Text(
                              orderList[index].isGoldDuck
                                  ? '4:23 PM'
                                  : '2:03 PM',
                              style: typography.smallTime),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                              orderList[index].isGoldDuck
                                  ? '1000'
                                  : '100',
                              style: typography.duckTitle),
                          const DollerWidget(fontSize: 15)
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: Responsive.width(1, context),
                            backgroundColor:
                                orderList[index].isCompleted
                                    ? colors.completed
                                    : colors.failed,
                          ),
                          Text(
                              orderList[index].isCompleted
                                  ? completed
                                  : failed,
                              style: typography.subTitle)
                        ],
                      )
                    ],
                  )
                ])),
        separatorBuilder: (context, index) => const Divider(
              color: Color(0xFFFCBD68),
              thickness: 0.3,
            ),
        itemCount: orderList.length);
  }
}
