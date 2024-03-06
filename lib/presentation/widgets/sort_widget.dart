import 'package:flutter/material.dart';

import '../../domain/constants/asset_paths.dart';
import '../../domain/constants/common_constants.dart';
import '../../domain/theme/theme_helper.dart';
import '../../domain/utils/responsive_utils.dart';

class SortWidget extends StatelessWidget {
  const SortWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    return Row(
      children: [
        Text(sortText, style: typography.discription),
        SizedBox(width: Responsive.width(0.8, context)),
        Image.asset(
          Assetpaths.myCriptoAssetPaths.sortIcon,
          width: Responsive.width(2.5, context),
          color: const Color(0xFF777777),
        ),
      ],
    );
  }
}
