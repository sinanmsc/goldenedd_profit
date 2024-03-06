import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/constants/home_constants.dart';
import 'package:goldenegg_profit/domain/constants/my_orders_constants.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_appbar.dart';
import 'package:goldenegg_profit/presentation/widgets/sort_widget.dart';

import '../../domain/theme/theme_helper.dart';
import 'widgets/orders_list_widget.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(0, 70), child: CustomAppbar(title: ordersText)),
        body: Padding(
          padding: EdgeInsets.all(Responsive.width(3.7, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(allOrderTitle, style: typography.title),
              SizedBox(height: Responsive.height(1.5, context)),
              const SortWidget(),
              SizedBox(height: Responsive.height(2, context)),
              Center(child: Text(orderDate, style: typography.subTitle)),
              SizedBox(height: Responsive.height(1.5, context)),
              const Expanded(
                child: OrdersList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
