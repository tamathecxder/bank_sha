import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({
    super.key,
    required this.title,
    this.height = 50,
    this.width = double.infinity,
    this.onPressed,
  });

  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(
          56,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(56),
          onTap: onPressed,
          child: SizedBox(
            width: width,
            height: height,
            child: Center(
              child: Text(
                title,
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
