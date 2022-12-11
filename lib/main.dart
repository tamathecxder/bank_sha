import 'package:e_wallet/ui/screens/sign_in_screen.dart';
import 'package:e_wallet/ui/screens/onboarding_screen.dart';
import 'package:e_wallet/ui/screens/sign_up_screen.dart';
import 'package:e_wallet/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        "/onboarding": (context) => const OnboardingScreen(),
        "/sign-in": (context) => const SignInScreen(),
        "/sign-up": (context) => const SignUpScreen(),
      },
    );
  }
}
