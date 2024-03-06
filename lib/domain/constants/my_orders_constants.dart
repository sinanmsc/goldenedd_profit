import 'package:goldenegg_profit/domain/models/my_orders_model.dart';

const String allOrderTitle = 'All Order history';
const String orderDate = '05 February, 2024';

List<MyOrdersModel> orderList = [
  MyOrdersModel(isCompleted: false, isGoldDuck: false),
  MyOrdersModel(isCompleted: true, isGoldDuck: true),
  MyOrdersModel(isCompleted: true, isGoldDuck: true),
  MyOrdersModel(isCompleted: true, isGoldDuck: false),
  MyOrdersModel(isCompleted: true, isGoldDuck: true),
  MyOrdersModel(isCompleted: true, isGoldDuck: false),
  MyOrdersModel(isCompleted: true, isGoldDuck: true),
  MyOrdersModel(isCompleted: true, isGoldDuck: false),
];
