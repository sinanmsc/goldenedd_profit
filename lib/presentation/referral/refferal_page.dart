import 'package:flutter/material.dart';
import '../../domain/constants/refferal_constants.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/shadermasking.dart';
import 'widgets/refferal_container.dart';
import 'widgets/refferal_header.dart';

class RefferalPage extends StatelessWidget {
  const RefferalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(0, 70),
            child: CustomAppbar(title: refferalAppbarTitle,isNeedBackButton: true,)),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Responsive.width(3.7, context)),
            child: Column(
              children: [
                const RefferalHeader(),
                SizedBox(height: Responsive.height(3, context)),
                const RefferalListBuilder(
                  levelTxt: refferalFiestLevelTitle,
                  startIndex: 0,
                ),
                SizedBox(height: Responsive.height(3, context)),
                const RefferalListBuilder(
                  levelTxt: refferalSecondLevelTitle,
                  startIndex: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RefferalListBuilder extends StatelessWidget {
  final String levelTxt;
  final int startIndex;
  const RefferalListBuilder({
    super.key,
    required this.levelTxt,
    required this.startIndex,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    final gradients = AppTheme.of(context).gradients;
    return Column(
      children: [
        CustomShaderMask(
          gradient: gradients.btnGradient,
          child: Text(
            levelTxt,
            style: typography.levelHead,
          ),
        ),
        SizedBox(height: Responsive.height(2.5, context)),
        ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => RefferalContainer(
                  imagePath: refferalList[startIndex + index].imagePath,
                  name: refferalList[startIndex + index].name,
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: Responsive.height(1.5, context),
                ),
            itemCount: 3),
      ],
    );
  }
}
