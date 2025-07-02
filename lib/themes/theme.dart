import 'package:e_wms_mobile/constants/font.dart';
import 'package:flutter/material.dart';
import 'package:e_wms_mobile/themes/mods/card_theme.dart';
import 'package:e_wms_mobile/themes/mods/header_theme.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey,
    appBarTheme: AppHeaderTheme.lightHeaderTheme,
    cardTheme: AppCardTheme.cardLightTheme,
    textTheme: AppTextStyles.textLightTheme,
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppHeaderTheme.darkHeaderTheme,
    cardTheme: AppCardTheme.cardDarkTheme,
    textTheme: AppTextStyles.textDarkTheme,
  );
}
