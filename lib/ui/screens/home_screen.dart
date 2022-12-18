import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/home_latest_transaction_item.dart';
import 'package:e_wallet/ui/widgets/home_service_item.dart';
import 'package:e_wallet/ui/widgets/home_tips_item.dart';
import 'package:e_wallet/ui/widgets/home_user_item_send_again.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildLatestTransactions(),
          buildSendAgain(),
          buildFriendlyTips(),
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

  Widget buildProfile(BuildContext context) {
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
                "dedekawugg",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/profile");
            },
            child: Container(
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
            'Nur Sholekhah',
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

  Widget buildServices() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                iconUrl: "assets/ic-top-up.png",
                title: "Top Up",
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: "assets/ic-send.png",
                title: "Send",
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: "assets/ic-withdraw.png",
                title: "Withdraw",
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: "assets/ic-more.png",
                title: "More",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLatestTransactions() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Transactions",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(
              top: 14,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: const [
                HomeLatestTransactionItem(
                  title: "Top Up",
                  time: "2 Days Ago",
                  amount: "525.000",
                  iconUrl: "assets/ic-transactions-topup.png",
                ),
                HomeLatestTransactionItem(
                  title: "Cashback",
                  time: "11 Sep",
                  amount: "22.000",
                  iconUrl: "assets/ic-transactions-cashback.png",
                ),
                HomeLatestTransactionItem(
                  title: "Withdraw",
                  time: "5 Minutes Ago",
                  amount: "50.000",
                  iconUrl: "assets/ic-transactions-withdraw.png",
                ),
                HomeLatestTransactionItem(
                  title: "Transfer",
                  time: "10 Dec",
                  amount: "1.000.000",
                  iconUrl: "assets/ic-transactions-transfer.png",
                ),
                HomeLatestTransactionItem(
                  title: "Electric",
                  time: "2 Aug",
                  amount: "105.000",
                  iconUrl: "assets/ic-transactions-electric.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Send Again",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                HomeUserItemSendAgain(
                  imgUrl: 'assets/img-friends-1.png',
                  username: 'Ysabelle',
                ),
                HomeUserItemSendAgain(
                  imgUrl: 'assets/img-friends-2.png',
                  username: 'Amanda',
                ),
                HomeUserItemSendAgain(
                  imgUrl: 'assets/img-friends-3.png',
                  username: 'Christ',
                ),
                HomeUserItemSendAgain(
                  imgUrl: 'assets/img-friends-4.png',
                  username: 'Dadang',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friendly Tips",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            runAlignment: WrapAlignment.spaceBetween,
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 16,
            spacing: 18,
            children: const [
              HomeTipsItem(
                title: "Best tips for using credit card",
                imgUrl: "assets/img-tips1.png",
                url: "https://pub.dev",
              ),
              HomeTipsItem(
                title: "Spot the good pie of finance model",
                imgUrl: "assets/img-tips2.png",
                url: "https://github.com/tamathecxder",
              ),
              HomeTipsItem(
                title: "Great hack to get better advices",
                imgUrl: "assets/img-tips3.png",
                url: "https://google.com",
              ),
              HomeTipsItem(
                title: "Save more penny buy this instead",
                imgUrl: "assets/img-tips4.png",
                url: "https://google.com",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
