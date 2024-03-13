import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:goldenegg_profit/presentation/profile/widgets/camera_widget.dart';
import 'package:goldenegg_profit/presentation/widgets/outlined_widget.dart';
import 'package:image_picker/image_picker.dart';

import '../../../application/profile/bloc/profile_bloc.dart';
import '../../../domain/constants/profile_constants.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';
import '../../authentication/auth_page.dart';
import 'profile_textfield_widget.dart';

class KYCVerification extends StatefulWidget {
  const KYCVerification({super.key, required this.proofController});
  final TextEditingController proofController;
  @override
  State<KYCVerification> createState() => _KYCVerificationState();
}

class _KYCVerificationState extends State<KYCVerification> {
  @override
  void initState() {
    widget.proofController.text = profileData.value.proofNo;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    final proofPicker = ImagePicker();

    void kycImage() async {
      try {
        XFile? pickedImage =
            await proofPicker.pickImage(source: ImageSource.camera);
        if (pickedImage != null) {
          if (context.mounted) {
            proofImage.value = pickedImage.path;
          }
        }
      } catch (e) {
        log(e.toString());
      }
    }

    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          kycdHead,
          style: typography.discription,
        ),
        SizedBox(height: Responsive.height(2, context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(Responsive.width(0.2, context)),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(Responsive.width(3, context)),
                  gradient: gradients.btnGradient),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Responsive.width(3, context)),
                decoration: BoxDecoration(
                  color: const Color(0xFF1F1E1E),
                  borderRadius:
                      BorderRadius.circular(Responsive.width(3, context)),
                ),
                child: SizedBox(
                  height: 30,
                  child: ValueListenableBuilder(
                      valueListenable: proofType,
                      builder: (context, proofValue, child) {
                        return DropdownButton(
                          underline: Container(),
                          icon: ShaderMask(
                            shaderCallback: (bounds) =>
                                gradients.btnGradient.createShader(bounds),
                            child: const Icon(Icons.keyboard_arrow_down),
                          ),
                          value: proofValue,
                          items: const [
                            DropdownMenuItem(
                                value: 'Aadhar', child: Text('Aadhar')),
                            DropdownMenuItem(
                                value: 'Passport', child: Text('Passport')),
                          ],
                          onChanged: (value) {
                            proofType.value = value!;
                          },
                        );
                      }),
                ),
              ),
            ),
            SizedBox(
                width: Responsive.width(55, context),
                child: ProfileTextField(
                  maxLength: 14,
                  keyboardType: TextInputType.number,
                  controller: widget.proofController,
                  hintText: 'Proof id',
                ))
          ],
        ),
        SizedBox(height: Responsive.height(4, context)),
        ValueListenableBuilder(
            valueListenable: proofImage,
            builder: (context, value, child) {
              if (value.isEmpty) {
                return CameraWidget(
                  onTap: kycImage,
                );
              } else {
                return GestureDetector(
                    onTap: kycImage,
                    child: OutlinedContainer(
                        padding: EdgeInsets.all(Responsive.width(3, context)),
                        child: Image.file(File(value))));
              }
            }),
        SizedBox(height: Responsive.height(2, context)),
      ],
    );
  }
}
