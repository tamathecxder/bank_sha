import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  final TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });

      print(pinController.text);
    }

    if (pinController.text == '123123') {
      Navigator.pop(context, true);
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });

      print(pinController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  controller: pinController,
                  readOnly: true,
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
                    onTap: () {
                      addPin("1");
                    },
                  ),
                  CustomInputButton(
                    number: "2",
                    onTap: () {
                      addPin("2");
                    },
                  ),
                  CustomInputButton(
                    number: "3",
                    onTap: () {
                      addPin("3");
                    },
                  ),
                  CustomInputButton(
                    number: "4",
                    onTap: () {
                      addPin("4");
                    },
                  ),
                  CustomInputButton(
                    number: "5",
                    onTap: () {
                      addPin("5");
                    },
                  ),
                  CustomInputButton(
                    number: "6",
                    onTap: () {
                      addPin("6");
                    },
                  ),
                  CustomInputButton(
                    number: "7",
                    onTap: () {
                      addPin("7");
                    },
                  ),
                  CustomInputButton(
                    number: "8",
                    onTap: () {
                      addPin("8");
                    },
                  ),
                  CustomInputButton(
                    number: "9",
                    onTap: () {
                      addPin("9");
                    },
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomInputButton(
                    number: "0",
                    onTap: () {
                      addPin("0");
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
                    },
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
