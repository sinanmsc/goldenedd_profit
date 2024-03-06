import 'package:goldenegg_profit/domain/constants/asset_paths.dart';

import '../models/refferal_model.dart';

const String refferalAppbarTitle = 'Refferal';
const String refferalCodeTitle = 'Refferal Code';
const String refferalDummyLink = 'http://www.example.com/index.html';
const String refferalFiestLevelTitle = 'My First Level ';
const String refferalSecondLevelTitle = 'My 2nd Level ';

List<RefferalModel> refferalList = [
  RefferalModel(imagePath: Assetpaths.refferalPaths.person1, name: 'James John'),
  RefferalModel(imagePath: Assetpaths.refferalPaths.person2, name: 'Anvin john'),
  RefferalModel(imagePath: Assetpaths.refferalPaths.person3, name: 'Athul T K'),
  RefferalModel(imagePath: Assetpaths.refferalPaths.person4, name: 'Nizam zazar'),
  RefferalModel(imagePath: Assetpaths.refferalPaths.person5, name: 'John Joy'),
  RefferalModel(imagePath: Assetpaths.refferalPaths.person6, name: 'Jesty James'),
];
