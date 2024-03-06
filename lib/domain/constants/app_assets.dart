import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'asset_paths.dart';

abstract class AppAssets {
  static GetStartAssets get getStartAssets => GetStartAssets();
  static HomeAssets get homeAssets => HomeAssets();
  static ProfileAssets get profileAssets => ProfileAssets();
  static MainPageAssets get mainPageAssets => MainPageAssets();
  static PaymentAssets get paymentAssets => PaymentAssets();
  static MyCriptoAssets get myCriptoAssets => MyCriptoAssets();
  static RefferalAssets get refferalAssets => RefferalAssets();
}

class GetStartAssets {
  final getStartImg1 = Image.asset(Assetpaths.getStartAssetPaths.getStartImg1);
  final getStartImg2 = Image.asset(Assetpaths.getStartAssetPaths.getStartImg2);
  final getStartImg3 = Image.asset(Assetpaths.getStartAssetPaths.getStartImg3);
  final authSuccessImg =
      Image.asset(Assetpaths.getStartAssetPaths.authSuccessImg);
  final authSuccessMsg =
      AssetImage(Assetpaths.getStartAssetPaths.authSuccessMsg);
}

class HomeAssets {
  final depositImg = SvgPicture.asset(Assetpaths.homeAssetPaths.depositImg);
  final moreImg = SvgPicture.asset(Assetpaths.homeAssetPaths.moreImg);
  final myFarmImg = SvgPicture.asset(Assetpaths.homeAssetPaths.myFarmImg);
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

class MyCriptoAssets {
  final goldenEgg = Image.asset(Assetpaths.myCriptoAssetPaths.goldenEgg);
}

class RefferalAssets{
  final person1 = Image.asset(Assetpaths.refferalPaths.person1);
  final person2 = Image.asset(Assetpaths.refferalPaths.person2);
  final person3 = Image.asset(Assetpaths.refferalPaths.person3);
  final person4 = Image.asset(Assetpaths.refferalPaths.person4);
  final person5 = Image.asset(Assetpaths.refferalPaths.person5);
  final person6 = Image.asset(Assetpaths.refferalPaths.person6);
}