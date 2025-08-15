import 'package:e_wms_mobile/constants/color.dart';
import 'package:flutter/material.dart';

class AppHeaderTheme {
  AppHeaderTheme._();

  static final lightHeaderTheme = AppBarTheme(
    backgroundColor: ColorConstant.lightBackground,
    // foregroundColor: ColorConstant,
    elevation: 0,
    // scrolledUnderElevation: ,
    shadowColor: ColorConstant.lightShadowColor,
    surfaceTintColor: ColorConstant.lightBackground,
    // shape: ,
    // iconTheme: ,
    // actionsIconTheme: ,
    centerTitle: true,
    // titleSpacing: ,
    // leadingWidth: ,
    // toolbarHeight: ,
    // toolbarTextStyle: ,
    titleTextStyle: TextStyle(fontSize: 24),
    // systemOverlayStyle: ,
    // actionsPadding: ,
  );

  static final darkHeaderTheme = AppBarTheme(
    backgroundColor: ColorConstant.darkBackground,
    // foregroundColor: ColorConstant,
    elevation: 0,
    // scrolledUnderElevation: ,
    shadowColor: ColorConstant.darkShadowColor,
    surfaceTintColor: ColorConstant.darkBackground,
    // shape: ,
    // iconTheme: ,
    // actionsIconTheme: ,
    centerTitle: true,
    // titleSpacing: ,
    // leadingWidth: ,
    // toolbarHeight: ,
    // toolbarTextStyle: ,
    titleTextStyle: TextStyle(fontSize: 20),
    // systemOverlayStyle: ,
    // actionsPadding: ,
  );
}
