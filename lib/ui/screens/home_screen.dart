import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(),
          buildWalletCard(),
          buildLevel(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          elevation: 0.0,
          type: BottomNavigationBarType.values[0],
          selectedItemColor: lightBlueColor,
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
                color: lightBlueColor,
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: blueColor,
        child: Image.asset(
          'assets/ic-add-circle.png',
          width: 24,
        ),
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Howdy,",
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "shaynahan",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/img-profile.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(18 / 2),
                ),
                child: Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          28,
        ),
        image: const DecorationImage(
          image: AssetImage(
            'assets/img-card-bg.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shayna Hana',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            "**** **** **** 1290",
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              letterSpacing: 6,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Balance",
            style: whiteTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          Text(
            "Rp. 20.000",
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Level 1",
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "55% ",
                      style: greenTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                    TextSpan(
                      text: "of Rp 20.000",
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              minHeight: 5,
              value: 0.55,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: greyColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
