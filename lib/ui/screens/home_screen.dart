import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: blueColor,
        unselectedItemColor: blackColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: blueTextStyle.copyWith(
          fontSize: 10,
          fontWeight: medium,
        ),
        unselectedLabelStyle: blackTextStyle.copyWith(
          fontSize: 10,
          fontWeight: medium,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic-overview.png',
              width: 20,
              color: blueColor,
            ),
            label: "Overview",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic-history.png',
              width: 20,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic-statistic.png',
              width: 20,
            ),
            label: "Statistic",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ic-reward.png',
              width: 20,
            ),
            label: "Reward",
          ),
        ],
      ),
    );
  }
}
