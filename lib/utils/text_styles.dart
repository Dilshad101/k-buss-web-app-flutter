import 'package:flutter/material.dart';
import 'package:k_buss/utils/colors.dart';

class AppText {
  static TextStyle get xSmall => const TextStyle(
        fontSize: 11,
        color: AppColor.secondaryColor,
      );
  static TextStyle get smallBold => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: AppColor.secondaryColor,
      );
  static TextStyle get small => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get medium => const TextStyle(
        fontSize: 14,
        color: AppColor.secondaryColor,
      );
  static TextStyle get mediumBold => const TextStyle(
        fontSize: 14,
        color: AppColor.secondaryColor,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get large => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get largeBold => const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColor.secondaryColor);
  static TextStyle get xLarge => const TextStyle(
        fontSize: 18,
        color: AppColor.secondaryColor,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get xxLarge => const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      );
}
