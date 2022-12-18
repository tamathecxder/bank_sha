import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinScreen extends StatelessWidget {
  const PinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
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
              const SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomInputButton(
                    number: "1",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    number: "2",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    number: "3",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    number: "4",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    number: "5",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    number: "6",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    number: "7",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    number: "8",
                    onTap: () {},
                  ),
                  CustomInputButton(
                    number: "9",
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomInputButton(
                    number: "0",
                    onTap: () {},
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: semiDarkColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          size: 24,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
