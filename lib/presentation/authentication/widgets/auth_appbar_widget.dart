
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: ShaderMask(
          shaderCallback: (bounds) =>
              gradients.btnGradient.createShader(bounds),
          child: const Icon(Icons.close),
        ),
      ),
    );
  }
}
