import 'dart:async';

import 'package:flutter/material.dart';
import 'package:goldenegg_profit/domain/router/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigationToNextPage() {
    Navigator.pushReplacementNamed(context, RoutPaths.getStarted);
  }

  startSplashScreenTimer() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, navigationToNextPage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('asset/splash_back.png'),
          ),
        ),
        child: Center(child: Image.asset('asset/logo.png')),
      ),
    );
  }
}
