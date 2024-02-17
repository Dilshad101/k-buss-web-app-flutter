import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onPressed, required this.label});
  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ),
        child: Text(label,
            style: AppText.mediumBold.copyWith(color: Colors.white)),
      ),
    );
  }
}
