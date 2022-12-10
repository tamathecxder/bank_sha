import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              Image.asset(
                'assets/img-onboarding1.png',
                width: 230,
                height: 331,
              ),
              Image.asset(
                'assets/img-onboarding2.png',
                width: 230,
                height: 331,
              ),
              Image.asset(
                'assets/img-onboarding3.png',
                width: 230,
                height: 331,
              )
            ],
            options: CarouselOptions(
              height: 331,
              viewportFraction: 1,
              enableInfiniteScroll: false,
            ),
          ),
        ],
      ),
    );
  }
}
