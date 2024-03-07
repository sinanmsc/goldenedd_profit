import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_snackbar.dart';
import 'package:image_picker/image_picker.dart';

import '../../domain/constants/deposit_constants.dart';
import '../../domain/constants/payment_constents.dart';
import '../../domain/router/router.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../profile/widgets/camera_widget.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/outlined_widget.dart';
import 'widgets.dart/payment_header.dart';
import '../widgets/shadermasking.dart';

class DepositPayment extends StatelessWidget {
  const DepositPayment({super.key});

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    final paymentScreenshotPicker = ImagePicker();
    void postScreenshot() async {
      try {
        XFile? pickedImage =
            await paymentScreenshotPicker.pickImage(source: ImageSource.camera);
        if (pickedImage != null) {
          if (context.mounted) {
            paymentScreenshot.value = pickedImage.path;
          }
        }
      } catch (e) {
        log(e.toString());
      }
    }

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size(0, 70),
            child: CustomAppbar(
              isNeedBackButton: true,
              title: paymentTitle,
              onPressed: () {
                paymentScreenshot.value = '';
                Navigator.pop(context);
              },
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Responsive.width(3.7, context)),
            child: Column(
              children: [
                const PaymentHead(title: minPaymentTxt),
                SizedBox(height: Responsive.height(3, context)),
                OutlinedContainer(
                    padding: EdgeInsets.all(Responsive.width(3.7, context)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: Responsive.width(9, context),
                          backgroundColor: const Color(0xFF2B200F),
                          child: Image.asset('asset/dollerr.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('term2fewxzfm2th', style: typography.subTitle),
                            SizedBox(height: Responsive.height(0.3, context)),
                            Text(walletAddressIdTitle,
                                style: typography.discription)
                          ],
                        ),
                        CustomShaderMask(
                            gradient: gradients.btnGradient,
                            child: const Icon(Icons.arrow_forward_ios_outlined))
                      ],
                    )),
                SizedBox(height: Responsive.height(2.5, context)),
                CustomShaderMask(
                    gradient: gradients.btnGradient,
                    child: const Text(addScreenshotProofTitle)),
                SizedBox(height: Responsive.height(2.5, context)),
                OutlinedContainer(
                    padding: EdgeInsets.all(Responsive.width(6, context)),
                    child: ValueListenableBuilder(
                      valueListenable: paymentScreenshot,
                      builder: (context, value, child) {
                        if (value.isEmpty) {
                          return CameraWidget(
                            onTap: postScreenshot,
                          );
                        } else {
                          return GestureDetector(
                              onTap: postScreenshot,
                              child: Image.file(File(paymentScreenshot.value)));
                        }
                      },
                    )),
                SizedBox(height: Responsive.height(4, context)),
                CustomButton(
                    onTap: () {
                      if (paymentScreenshot.value.isEmpty) {
                        customSnackBar(context, 'Please add proof');
                      } else {
                        Navigator.pushNamed(context, RoutPaths.deposit);
                      }
                    },
                    text: 'Done'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
