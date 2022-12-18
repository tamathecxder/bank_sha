import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/screens/home_screen.dart';
import 'package:e_wallet/ui/screens/pin_screen.dart';
import 'package:e_wallet/ui/screens/profile_screen.dart';
import 'package:e_wallet/ui/screens/sign_in_screen.dart';
import 'package:e_wallet/ui/screens/onboarding_screen.dart';
import 'package:e_wallet/ui/screens/sign_up_screen.dart';
import 'package:e_wallet/ui/screens/sign_up_set_ktp.dart';
import 'package:e_wallet/ui/screens/sign_up_set_profile.dart';
import 'package:e_wallet/ui/screens/sign_up_success.dart';
import 'package:e_wallet/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightColor,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          backgroundColor: lightColor,
          centerTitle: true,
          elevation: 0.0,
          titleTextStyle: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 20,
          ),
        ),
      ),
      routes: {
        "/": (context) => const SplashScreen(),
        "/onboarding": (context) => const OnboardingScreen(),
        "/sign-in": (context) => const SignInScreen(),
        "/sign-up": (context) => const SignUpScreen(),
        "/sign-up-set-profile": (context) => const SignUpSetProfileSceen(),
        "/sign-up-set-ktp": (context) => const SignUpSetKtpSceen(),
        "/sign-up-success": (context) => const SignUpSuccessScreen(),
        "/home": (context) => const HomeScreen(),
        "/profile": (context) => const ProfileScreen(),
        "/pin": (context) => const PinScreen(),
      },
    );
  }
}
