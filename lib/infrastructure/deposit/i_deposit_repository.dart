import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/exception/firebase_auth_exception.dart';
import '../../domain/models/deposit/deposit_model.dart';

abstract class IDepositRepo {
  Stream<List<DepositModel>> getData();
}

class DepositRepoImpl implements IDepositRepo {
  final db = FirebaseFirestore.instance;
  final collection = FirebaseFirestore.instance
      .collection('deposits')
      .withConverter(
          fromFirestore: DepositModel.fromFirestore,
          toFirestore: (DepositModel value, options) => value.toFirestore());
  @override
  Stream<List<DepositModel>> getData() async* {
    try {
      await for (var data in collection.snapshots()) {
        yield [
          for (var deposits in data.docs)
            DepositModel(
                name: deposits.data().name,
                amount: deposits.data().amount,
                image: deposits.data().image.toString(),
                dailyProfit: deposits.data().dailyProfit,
                description: deposits.data().description)
        ];
      }
    } on FirebaseException catch (e) {
      throw GetFirebaeAuthException(e.message.toString());
    } catch (e) {
      throw GetFirebaeAuthException(e.toString());
    }
  }
}
