// ignore_for_file: avoid_print

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/screens/login_screen.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();
  List<String> title = [
    "Grow Your\nFinancial Today",
    "Build From\nZero to Freedom",
    "Start Together"
  ];
  List<String> subTitle = [
    "Our system is helping you to\nachieve a better goal",
    "We provide tips for you so that\nyou can adapt easier",
    "We will guide you to where\nyou wanted it too",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            carouselController: carouselController,
            items: [
              Image.asset(
                'assets/img-onboarding1.png',
                width: 319,
                height: 331,
              ),
              Image.asset(
                'assets/img-onboarding2.png',
                width: 319,
                height: 331,
              ),
              Image.asset(
                'assets/img-onboarding3.png',
                width: 319,
                height: 331,
              )
            ],
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
              height: 331,
              viewportFraction: 1,
              enableInfiniteScroll: false,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 24,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  title[currentIndex],
                  textAlign: TextAlign.center,
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 20,
                  ),
                  softWrap: false,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  subTitle[currentIndex],
                  textAlign: TextAlign.center,
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
                SizedBox(
                  height: currentIndex > 1 ? 38 : 50,
                ),
                currentIndex == 2
                    ? Column(
                        children: [
                          CustomFilledButton(
                            title: "Get Started",
                            onPressed: () {
                              print("test");
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextButton(
                            title: "Sign In",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: currentIndex == 0
                                  ? lightBlueColor
                                  : lightColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: currentIndex == 1
                                  ? lightBlueColor
                                  : lightColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: currentIndex == 2
                                  ? lightBlueColor
                                  : lightColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const Spacer(),
                          CustomFilledButton(
                            title: "Continue",
                            width: 150,
                            height: 50,
                            onPressed: () {
                              carouselController.nextPage();
                            },
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
