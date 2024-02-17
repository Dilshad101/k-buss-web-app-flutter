import 'package:flutter/material.dart';
import 'package:k_buss/utils/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hint,
    this.isLogin = false,
    this.keyboard,
    this.isObscure,
    this.borderRadius = 4,
  });
  final String hint;
  final bool isLogin;
  final TextEditingController controller;
  final TextInputType? keyboard;
  final bool? isObscure;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboard,
      obscureText: isObscure ?? false,
      style: TextStyle(color: isLogin ? Colors.white : Colors.black87),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            isLogin ? AppText.mediumBold.copyWith(color: Colors.white) : null,
        filled: false,
        enabledBorder: isLogin
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(color: Colors.white.withOpacity(.3)))
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
        focusedBorder: isLogin
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: const BorderSide(color: Colors.white))
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
      ),
    );
  }
}
