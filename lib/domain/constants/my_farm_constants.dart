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
const String currentProfitText = 'Current Profit';
const String doller = ' \$';
const String purchaseDate = 'Date of Purchase : 25-02-2024';
const String holdDetailstxt = 'Holding details';
const String sellBtntxt = 'Sell';
const String confirmSellBtntxt = 'Sell it';
const String myFarmConfirmMsg =
    '20% Earnings in a short time\nDate of Purchase : 25-02-2024';
const String myFarmConfirmTitle = 'Are you sure want to sell ?';

final List<DuckModel> myFarmList = [
  DuckModel(
    duckImage: Assetpaths.ducksPaths.bronseDuck,
    duckName: 'Bronse Duck',
    amount: '100',
    profitPercentage: '2',
    profitAmount: '10',
    isProfit: true,
  ),
  DuckModel(
    duckImage: Assetpaths.ducksPaths.silverDuck,
    duckName: 'Silver Duckk',
    amount: '500',
    profitPercentage: '4',
    profitAmount: '3',
    isProfit: false,
  ),
  DuckModel(
    duckImage: Assetpaths.ducksPaths.goldDuck,
    duckName: 'Gold Duck',
    amount: '1000',
    profitPercentage: '2',
    profitAmount: '10',
    isProfit: true,
  ),
  DuckModel(
    duckImage: Assetpaths.ducksPaths.platinumDuck,
    duckName: 'Platinum',
    amount: '2500',
    profitPercentage: '4',
    profitAmount: '3',
    isProfit: false,
  ),
  DuckModel(
    duckImage: Assetpaths.ducksPaths.platinumDuck,
    duckName: 'Platinum',
    amount: '2500',
    profitPercentage: '2',
    profitAmount: '10',
    isProfit: true,
  ),
];
