import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/theme/theme_helper.dart';
import 'package:goldenegg_profit/domain/utils/responsive_utils.dart';
import 'package:goldenegg_profit/presentation/home/widgets/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routerPath = '/home';
  static const routerName = 'Home';

  @override
  Widget build(BuildContext context) {
    final gradients = AppTheme.of(context).gradients;
    final typography = AppTheme.of(context).typography;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              const HomeHeader(),
              Padding(
                padding: EdgeInsets.all(Responsive.width(3.7, context)),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(Responsive.width(3.7, context)),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Responsive.width(2, context)),
                    gradient: LinearGradient(colors: [
                      const Color(0xFFF9B860).withOpacity(0.6),
                      const Color(0xFFB37A1B).withOpacity(0.6)
                    ]),
                  ),
                  child: ,
                ),
              )
            ],
          )),
    );
  }
}
