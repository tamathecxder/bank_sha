import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeTipsItem extends StatelessWidget {
  const HomeTipsItem({
    super.key,
    required this.imgUrl,
    required this.title,
    this.url,
  });

  final String imgUrl;
  final String title;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 176,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                20,
              ),
            ),
            child: Image.asset(
              imgUrl,
              width: 155,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            title,
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
