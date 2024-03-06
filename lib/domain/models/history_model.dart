class HistoryModel {
  final String name;
  final String imagePath;
  final String time;
  final String amount;
  final bool isCompleted;
  final bool isSend;

  HistoryModel(
      {required this.name,
      required this.imagePath,
      required this.time,
      required this.amount,
      required this.isCompleted,
      required this.isSend});
}
