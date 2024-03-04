import 'package:goldenegg_profit/domain/constants/asset_paths.dart';

import '../models/duck_model.dart';

const String myFarmAppbarTitle = 'My Farm';
const String myCriptoHeadText = 'Holdings (9)';
const String currentHead = 'Current';
const String currentValue = '25';
const String amountHead = 'Amount';
const String amountValue = '\$800';
const String totalProfitEggHead = 'Total Profit Eggs';
const String totalProfitValue = ' 690(20%)';
const String sortText = 'Sort';
const String currentProfitText = 'Current Profit';
const String doller = ' \$';

final List<DuckModel> myFarmList = [
  DuckModel(
    duckImage: Assetpaths.myCriptoAssetPaths.bronseDuck,
    duckName: 'Bronse Duck',
    amount: '100',
    profitPercentage: '2',
    profitAmount: '10',
    isProfit: true,
  ),
  DuckModel(
    duckImage: Assetpaths.myCriptoAssetPaths.silverDuck,
    duckName: 'Silver Duckk',
    amount: '500',
    profitPercentage: '4',
    profitAmount: '3',
    isProfit: false,
  ),
  DuckModel(
    duckImage: Assetpaths.myCriptoAssetPaths.goldDuck,
    duckName: 'Gold Duck',
    amount: '1000',
    profitPercentage: '2',
    profitAmount: '10',
    isProfit: true,
  ),
  DuckModel(
    duckImage: Assetpaths.myCriptoAssetPaths.platinumDuck,
    duckName: 'Platinum',
    amount: '2500',
    profitPercentage: '4',
    profitAmount: '3',
    isProfit: false,
  ),
  DuckModel(
    duckImage: Assetpaths.myCriptoAssetPaths.platinumDuck,
    duckName: 'Platinum',
    amount: '2500',
    profitPercentage: '2',
    profitAmount: '10',
    isProfit: true,
  ),
];
