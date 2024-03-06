import 'package:flutter/material.dart';

import '../../../domain/theme/theme_helper.dart';
import '../../../domain/utils/responsive_utils.dart';
import '../../widgets/outlined_widget.dart';

class RefferalContainer extends StatelessWidget {
  final String imagePath;
  final String name;
  const RefferalContainer({
    super.key,
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final typography = AppTheme.of(context).typography;
    return OutlinedContainer(
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.width(4.5, context),
            vertical: Responsive.width(2.2, context)),
        child: Row(
          children: [
            CircleAvatar(
                radius: Responsive.width(6.5, context),
                backgroundImage: AssetImage(imagePath)),
            SizedBox(width: Responsive.width(17, context)),
            Text(name, style: typography.duckTitle)
          ],
        ));
  }
}
