import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.keyboardType = TextInputType.text,
    this.isObscure = false,
    required this.label,
  });

  final String label;
  final TextInputType keyboardType;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          keyboardType: keyboardType,
          obscureText: isObscure,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
      ],
    );
  }
}
