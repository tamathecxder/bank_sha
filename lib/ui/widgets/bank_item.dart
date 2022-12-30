import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class BankItem extends StatelessWidget {
  const BankItem({
    super.key,
    required this.imageUrl,
    required this.bankName,
    this.isSelected = false,
  });

  final String imageUrl;
  final String bankName;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 88,
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: isSelected! ? blueColor : whiteColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                bankName,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              Text(
                "50 mins",
                textAlign: TextAlign.end,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: regular,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
