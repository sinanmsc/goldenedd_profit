import 'package:goldenegg_profit/domain/models/history_model.dart';

const String historyAppbarTitle = 'My Transaction History';
const String historyTitle = 'All history';
const String historyDate = '05 February, 2024';

List<HistoryModel> histories = [
  HistoryModel(
    name: 'John James',
    imagePath: 'asset/men.png',
    time: '9:03 PM',
    amount: '100',
    isCompleted: true,
    isSend: true,
  ),
  HistoryModel(
    name: 'Golden Egg',
    imagePath: 'asset/goldenEggProfile.png',
    time: '2:03 PM',
    amount: '1000',
    isCompleted: true,
    isSend: false,
  ),
  HistoryModel(
    name: 'John James',
    imagePath: 'asset/men.png',
    time: '4:23 PM',
    amount: '100',
    isCompleted: true,
    isSend: true,
  ),
  HistoryModel(
    name: 'Golden Egg',
    imagePath: 'asset/goldenEggProfile.png',
    time: '2:03 PM',
    amount: '1000',
    isCompleted: true,
    isSend: false,
  ),
  HistoryModel(
    name: 'John James',
    imagePath: 'asset/men.png',
    time: '4:23 PM',
    amount: '1000',
    isCompleted: true,
    isSend: true,
  ),
  HistoryModel(
    name: 'Golden Egg',
    imagePath: 'asset/goldenEggProfile.png',
    time: '2:03 PM',
    amount: '1000',
    isCompleted: false,
    isSend: false,
  ),
  HistoryModel(
    name: 'John James',
    imagePath: 'asset/men.png',
    time: '4:23 PM',
    amount: '1000',
    isCompleted: true,
    isSend: true,
  ),
];
