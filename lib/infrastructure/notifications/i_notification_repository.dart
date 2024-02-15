import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:goldenegg_profit/domain/exception/cannot_getdata_exception.dart';
import 'package:goldenegg_profit/domain/models/notification/notification_model.dart';

abstract class INotificationRepository {
  Future<List<NotificationModel>?> getNotifications();
}

class NotificatioRepositoryImpl implements INotificationRepository {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));

  @override
  Future<List<NotificationModel>?> getNotifications() async {
    try {
      Response response = await dio.get('/posts');
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        final notifications = response.data;
        return [
          for (var notification in notifications)
            NotificationModel.fromJson(notification)
        ];
      }
    } catch (e) {
      log(e.toString());
      throw CannotGetdatException();
    }
    return null;
  }
}
