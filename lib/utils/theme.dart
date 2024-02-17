import 'package:flutter/material.dart';
import 'package:k_buss/utils/colors.dart';
import 'package:k_buss/utils/text_styles.dart';

final theme = ThemeData(
  scaffoldBackgroundColor: AppColor.backgroundColor,
  fontFamily: 'DMSans',
  inputDecorationTheme: inputTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColor.primaryColor),
      shape: MaterialStateProperty.all(const BeveledRectangleBorder()),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      textStyle: MaterialStateProperty.all(
        AppText.mediumBold.copyWith(color: Colors.white),
      ),
    ),
  ),
);

InputDecorationTheme inputTheme = InputDecorationTheme(
  constraints: BoxConstraints.loose(const Size.fromHeight(48)),
  isDense: true,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: const BorderSide(color: Colors.white),
  ),
);
