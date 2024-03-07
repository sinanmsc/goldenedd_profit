import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/notification/bloc/notification_bloc.dart';
import 'package:goldenegg_profit/domain/constants/notification_constants.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';

import '../widgets/custom_appbar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    final typography = AppTheme.of(context).typography;

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<NotificationBloc>()
          .add(const NotificationEvent.getNotifications());
    });

    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(0, Responsive.height(8.5, context)),
            child: const CustomAppbar(title: notificationAppbarTitle,isNeedBackButton: true,),
          ),
          body: BlocBuilder<NotificationBloc, NotificationState>(
            builder: (context, state) {
              if (state.errorMsg != null) {
                return Center(
                  child: Text(state.errorMsg.toString()),
                );
              } else if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.notifications == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.separated(
                  padding: EdgeInsets.all(Responsive.width(3.7, context)),
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.notifications![index].title,
                        style: typography.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: Responsive.height(1.5, context)),
                      Text(
                        state.notifications![index].body,
                        style: typography.iconText,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  separatorBuilder: (context, index) => Divider(
                    height: Responsive.height(5, context),
                    thickness: 0.2,
                    color: colors.bg,
                  ),
                  itemCount: state.notifications!.length,
                );
              }
            },
          )),
    );
  }
}
