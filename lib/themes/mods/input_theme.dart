import 'package:e_wms_mobile/constants/color.dart';
import 'package:flutter/material.dart';

class AppInputTheme {
  const AppInputTheme._();

  static final inputAppLightTheme = InputDecorationTheme(
    filled: false,
    fillColor: ColorConstant.lightBackground,
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: ColorConstant.lightDefaultBorderColor,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: ColorConstant.lightDefaultBorderColor,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: ColorConstant.lightFocusBorderColor,
        width: 2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: ColorConstant.lightErrorBorderColor,
        width: 2,
      ),
    ),
  );

  static final inputAppDarkTheme = InputDecorationTheme(
    filled: false,
    fillColor: ColorConstant.darkBackground,
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: ColorConstant.darkDefaultBorderColor,
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: ColorConstant.darkDefaultBorderColor,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: ColorConstant.darkFocusBorderColor,
        width: 2,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: ColorConstant.darkErrorBorderColor,
        width: 2,
      ),
    ),
  );
}
