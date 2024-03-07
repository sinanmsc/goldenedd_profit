import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldenegg_profit/application/add_kyc/bloc/add_kyc_bloc.dart';
import 'package:goldenegg_profit/domain/constants/profile_constants.dart';
import 'package:goldenegg_profit/domain/models/profile/profile_model.dart';
import 'package:goldenegg_profit/domain/models/profile/proof_model.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/authentication/auth_page.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_appbar.dart';
import 'package:goldenegg_profit/presentation/widgets/custom_button.dart';

import '../../application/profile/bloc/profile_bloc.dart';
import 'widgets/kyc_verification_widget.dart';

class AddKyc extends StatelessWidget {
  final proofController = TextEditingController();
  AddKyc({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(0, 70),
            child: CustomAppbar(
              title: addKycAppbar,
              isNeedBackButton: true,
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Responsive.width(3.7, context)),
            child: Column(
              children: [
                KYCVerification(proofController: proofController),
                SizedBox(height: Responsive.height(5, context)),
                CustomButton(
                    onTap: () {
                      profileData.value = ProfileModel(
                          userName: profileData.value.userName,
                          email: profileData.value.email,
                          mobileNo: profileData.value.mobileNo,
                          adsress: profileData.value.adsress,
                          password: profileData.value.password,
                          proof: ProofModel(
                              proofType: proofType.value,
                              proofNo: proofController.text));
                      context.read<AddKycBloc>().add(AddKycEvent.add(
                          context,
                          proofType.value,
                          proofController.text,
                          proofImage.value));
                    },
                    text: 'Add')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
