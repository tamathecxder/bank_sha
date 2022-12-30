import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:e_wallet/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
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
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(28 / 2),
                      ),
                      child: Icon(
                        Icons.check_circle,
                        color: greenColor,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Nur Sholekhah',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                  title: "Edit Profile",
                  iconUrl: "assets/ic-edit-profile.png",
                  onTap: () async {
                    if (await Navigator.pushNamed(context, "/pin") == true) {
                      Navigator.pushNamed(context, "/profile-edit");
                    }
                  },
                ),
                ProfileMenuItem(
                  title: "My Pin",
                  iconUrl: "assets/ic-mypin.png",
                  onTap: () async {
                    if (await Navigator.pushNamed(context, "/pin") == true) {
                      Navigator.pushNamed(context, "/profile-edit-pin");
                    }
                  },
                ),
                ProfileMenuItem(
                  title: "Wallet Settings",
                  iconUrl: "assets/ic-wallet.png",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  title: "My Rewards",
                  iconUrl: "assets/ic-reward.png",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  title: "Help Center",
                  iconUrl: "assets/ic-help-center.png",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  title: "Log Out",
                  iconUrl: "assets/ic-logout.png",
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: "Report a problem",
            onPressed: () {},
          ),
          const SizedBox(
            height: 87,
          ),
        ],
      ),
    );
  }
}
