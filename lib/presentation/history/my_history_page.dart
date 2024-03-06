import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../domain/constants/common_constants.dart';
import '../../domain/constants/history_constants.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/doller_widget.dart';
import '../widgets/sort_widget.dart';

class MyHistory extends StatelessWidget {
  const MyHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final colors = AppTheme.of(context).colors;
    return SafeArea(
        child: Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(0, 70),
        child: CustomAppbar(title: historyAppbarTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(Responsive.width(3.7, context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(historyTitle, style: typography.title),
            SizedBox(height: Responsive.height(1.5, context)),
            const SortWidget(),
            SizedBox(height: Responsive.height(2, context)),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(child: Text(historyDate, style: typography.subTitle)),
                  SizedBox(height: Responsive.height(1.5, context)),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                            padding:
                                EdgeInsets.all(Responsive.width(3.7, context)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: Responsive.width(6, context),
                                      backgroundImage: AssetImage(
                                          histories[index].imagePath),
                                    ),
                                    SizedBox(
                                        width: Responsive.width(2.5, context)),
                                    Column(
                                      children: [
                                        Text(histories[index].name,
                                            style: typography.duckTitle),
                                        Text(histories[index].time,
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
                                        SvgPicture.asset(histories[index].isSend
                                            ? 'asset/send_arrow.svg'
                                            : 'asset/recieve_arrow.svg'),
                                        SizedBox(
                                            width:
                                                Responsive.width(1, context)),
                                        Text(histories[index].amount,
                                            style: typography.duckTitle),
                                        const DollerWidget(fontSize: 15)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: Responsive.width(1, context),
                                          backgroundColor:
                                              histories[index].isCompleted
                                                  ? colors.completed
                                                  : colors.failed,
                                        ),
                                        Text(
                                            histories[index].isCompleted
                                                ? completed
                                                : failed,
                                            style: typography.subTitle)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => const Divider(
                            color: Color(0xFFFCBD68),
                            thickness: 0.3,
                          ),
                      itemCount: histories.length)
                ],
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
