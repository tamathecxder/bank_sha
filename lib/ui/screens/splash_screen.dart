import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
