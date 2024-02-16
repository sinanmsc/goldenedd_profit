import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'asset_paths.dart';

abstract class AppAssets {
  static GetStartAssets get getStartAssets => GetStartAssets();
  static HomeAssets get homeAssets => HomeAssets();
  static ProfileAssets get profileAssets => ProfileAssets();
  static MainPageAssets get mainPageAssets => MainPageAssets();
  static PaymentAssets get paymentAssets => PaymentAssets();
}

class GetStartAssets {
  final getStartImg1 = Image.asset(Assetpaths.getStartAssetPaths.getStartImg1);
  final getStartImg2 = Image.asset(Assetpaths.getStartAssetPaths.getStartImg2);
  final getStartImg3 = Image.asset(Assetpaths.getStartAssetPaths.getStartImg3);
  final authSuccessImg =
      Image.asset(Assetpaths.getStartAssetPaths.authSuccessImg);
}

class HomeAssets {
  final depositImg = SvgPicture.asset(Assetpaths.homeAssetPaths.depositImg);
  final moreImg = SvgPicture.asset(Assetpaths.homeAssetPaths.moreImg);
  final myCriptoImg = SvgPicture.asset(Assetpaths.homeAssetPaths.myCriptoImg);
  final notiImg = Image.asset(Assetpaths.homeAssetPaths.notiImg);
  final ordersImg = SvgPicture.asset(Assetpaths.homeAssetPaths.ordersImg);
  final refferalImg = SvgPicture.asset(Assetpaths.homeAssetPaths.refferalImg);
  final savingsImg = SvgPicture.asset(Assetpaths.homeAssetPaths.savingsImg);
  final searchImg = Image.asset(Assetpaths.homeAssetPaths.searchImg);
  final creditIcon = Image.asset(Assetpaths.homeAssetPaths.creditIcon);
  final creditBg = AssetImage(Assetpaths.homeAssetPaths.creditBg);
}

class ProfileAssets {
  final cameraImg = Image.asset(Assetpaths.profileAssetPaths.cameraImg);
  final editBtnImg = Image.asset(Assetpaths.profileAssetPaths.editBtnImg);
  final personImg = Image.asset(Assetpaths.profileAssetPaths.personImg);
}

class MainPageAssets {
  final activityIcon = Image.asset(Assetpaths.mainPageAssetPaths.activityIcon);
  final homeIcon = Image.asset(Assetpaths.mainPageAssetPaths.homeIcon);
  final walletIcon = Image.asset(Assetpaths.mainPageAssetPaths.walletIcon);
}

class PaymentAssets {
  final debitImg = Image.asset(Assetpaths.paymentAssetPaths.debitImg);
  final bankImg = Image.asset(Assetpaths.paymentAssetPaths.bankImg);
  final newBankImg = Image.asset(Assetpaths.paymentAssetPaths.newBankImg);
}
