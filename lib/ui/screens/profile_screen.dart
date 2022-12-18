import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        backgroundColor: lightColor,
        title: Text(
          "My Profile",
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
