import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class PinScreen extends StatelessWidget {
  const PinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sha PIN",
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: "*",
                maxLength: 6,
                style: whiteTextStyle.copyWith(
                  letterSpacing: 14,
                  fontWeight: medium,
                  fontSize: 36,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
                cursorColor: whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
