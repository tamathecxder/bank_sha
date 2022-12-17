import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeUserItemSendAgain extends StatelessWidget {
  const HomeUserItemSendAgain({
    super.key,
    required this.imgUrl,
    required this.username,
  });

  final String imgUrl;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: whiteColor,
      ),
      margin: const EdgeInsets.only(
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(
              bottom: 14,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Text(
            "@$username",
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
