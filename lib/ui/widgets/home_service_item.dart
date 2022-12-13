import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeServiceItem extends StatelessWidget {
  const HomeServiceItem({
    super.key,
    required this.title,
    required this.iconUrl,
    this.onTap,
  });

  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Image.asset(
              iconUrl,
              width: 26,
            ),
          ),
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}
