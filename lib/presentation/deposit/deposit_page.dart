import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/deposits/bloc/deposit_bloc.dart';

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
    context.read<DepositBloc>().add(const DepositEvent.getDepositData());
    // log('dddd' + deposiyDatas.toString());
    // final depositDatas = context.

    Gradient getGradient(int index, List list) {
      if (list[index].name == 'Bronze Duck') {
        return gradients.bronse;
      } else if (list[index].name == 'Silver Duck') {
        return gradients.silver;
      } else if (list[index].name == 'Golden Duck') {
        return gradients.golden;
      } else if (list[index].name == 'Platinum Duck') {
        return gradients.platinum;
      } else if (list[index].name == 'Diamond Duck') {
        return gradients.diamond;
      } else {
        return gradients.titanium;
      }
    }

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(0, Responsive.height(9, context)),
          child: const CustomAppbar(
              title: depositAppbarTitle, isNeedBackButton: true),
        ),
        body: Padding(
          padding: EdgeInsets.all(Responsive.width(3.7, context)),
          child: Column(
            children: [
              const WelcomBonusWidget(),
              SizedBox(height: Responsive.height(2, context)),
              Expanded(
                child: BlocBuilder<DepositBloc, DepositState>(
                  builder: (context, state) {
                    final depositDatas = state.deposits;
                    if (state.errorMsg.isNotEmpty) {
                      return Center(child: Text(state.errorMsg));
                    } else if (state.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return ListView.separated(
                        itemBuilder: (context, index) {
                          Gradient gradient = getGradient(index, depositDatas);

                          return GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DepositDetail(
                                      containerGradient: gradient,
                                      scheme: depositDatas[index]),
                                )),
                            child: DepositSchemContainer(
                              gradient: gradient,
                              title: depositDatas[index].name,
                              amount:
                                  depositDatas[index].amount.toStringAsFixed(0),
                              profitAmount:
                                  depositDatas[index].dailyProfit.toString(),
                              imagePath: depositDatas[index].image,
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              height: Responsive.height(1.5, context),
                            ),
                        itemCount: state.deposits.length);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
