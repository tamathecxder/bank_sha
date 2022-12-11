import 'package:e_wallet/shared/theme.dart';
import 'package:e_wallet/ui/widgets/buttons.dart';
import 'package:e_wallet/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignUpSetProfileSceen extends StatelessWidget {
  const SignUpSetProfileSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            width: 155,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo-sha-light.png'),
              ),
            ),
          ),
          Text(
            "Join Us to Unlock\nYour Growth",
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: BoxDecoration(
                //     color: darkGreyColor,
                //     shape: BoxShape.circle,
                //   ),
                //   child: Center(
                //     child: Image.asset(
                //       'assets/ic-upload.png',
                //       width: 32,
                //     ),
                //   ),
                // ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/img-profile.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "John Doe",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomTextFormField(
                  label: "Set PIN (6 digit number)",
                  keyboardType: TextInputType.text,
                  isObscure: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: "Continue",
                  onPressed: () {
                    Navigator.pushNamed(context, "/sign-up-set-ktp");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
