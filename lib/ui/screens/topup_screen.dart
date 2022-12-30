import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class TopupScreen extends StatelessWidget {
  const TopupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Up"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Wallet",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img-card-bg-small.png',
                width: 80,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "8008 2202 1778",
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  Text(
                    "John Doe",
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
