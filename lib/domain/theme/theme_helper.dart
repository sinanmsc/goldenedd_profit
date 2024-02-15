import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/extensions/color_extension.dart';
import 'package:goldenegg_profit/domain/theme/extensions/gradient_extension.dart';
import 'package:goldenegg_profit/domain/theme/extensions/space_extension.dart';
import 'package:goldenegg_profit/domain/theme/extensions/typography_extension.dart';

class AppTheme {
  final BuildContext context;

  const AppTheme.of(this.context);

  AppColor get colors {
    return Theme.of(context).extension<AppColor>()!;
  }

  AppSpaceExtension get spaces {
    return Theme.of(context).extension<AppSpaceExtension>()!;
  }

  AppTypographyExtension get typography {
    return Theme.of(context).extension<AppTypographyExtension>()!;
  }

  AppGradients get gradients {
    return Theme.of(context).extension<AppGradients>()!;
  }
}
