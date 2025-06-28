import 'package:e_wms_mobile/constants/color.dart';
import 'package:flutter/material.dart';

class AppInputTheme {
  const AppInputTheme._();

  static final inputAppLightTheme = InputDecorationTheme(
    filled: true,
    fillColor: ColorConstant.lightBackground,
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: ColorConstant.primary),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstant.primary.withOpacity(0.5)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstant.primary),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstant.error),
    ),
  );

  static final inputAppDarkTheme = InputDecorationTheme(
    filled: true,
    fillColor: ColorConstant.darkBackground,
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: ColorConstant.primary),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstant.primary.withOpacity(0.5)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstant.primary),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstant.error),
    ),
  );
}
