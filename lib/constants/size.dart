import 'package:flutter/material.dart';

class AppSizeStyle {
  AppSizeStyle._();

  // Full Sizes
  static double fullWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double fullHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  // Navigation Bar Sizes
  static double naviBarWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double naviBarHeight(BuildContext context) =>
      MediaQuery.of(context).size.height * 1 / 10;

  // Landing Bottom Sizes
  static double landingBottomWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double landingBottomHeight(BuildContext context) =>
      MediaQuery.of(context).size.height * 3 / 4;

  // Locate Bottom Sizes
  static double locateBottomHeight(BuildContext context) =>
      MediaQuery.of(context).size.height * 1 / 6;

  static double locateBottomWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
}
