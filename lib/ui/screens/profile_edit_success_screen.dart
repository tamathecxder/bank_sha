import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfileEditSuccessScreen extends StatelessWidget {
  const ProfileEditSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nice Update!",
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              "Your data is safe with\nour system",
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              width: 184,
              height: 50,
              title: "My Profile",
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/profile",
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
