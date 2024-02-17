import 'package:flutter/material.dart';
import 'package:k_buss/utils/colors.dart';
import 'package:k_buss/utils/text_styles.dart';

class AppOutLineButton extends StatelessWidget {
  const AppOutLineButton(
      {super.key, required this.onPressed, required this.label});
  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ),
        child: Text(label,
            style: AppText.mediumBold.copyWith(color: AppColor.primaryColor)),
      ),
    );
  }
}
