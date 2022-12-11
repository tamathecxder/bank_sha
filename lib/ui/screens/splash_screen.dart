import 'dart:async';

import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamed(context, "/onboarding");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: Center(
        child: Image.asset(
          'assets/logo-sha-dark.png',
          width: 155,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
