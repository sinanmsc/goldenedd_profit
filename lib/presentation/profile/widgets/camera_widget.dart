
import 'package:flutter/material.dart';

import '../../../domain/constants/profile_constants.dart';
import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';

class CameraWidget extends StatelessWidget {
  final void Function()? onTap;
  const CameraWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: Responsive.width(5.3, context),
        backgroundColor: colors.iconBg,
        child: Image.asset(cameraIcon),
      ),
    );
  }
}
