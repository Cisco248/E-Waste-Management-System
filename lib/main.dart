import 'package:e_wms_mobile/pages/landing_page.dart';
import 'package:e_wms_mobile/pages/locate_page.dart';
import 'package:e_wms_mobile/pages/profile_page.dart';
import 'package:e_wms_mobile/pages/redeem_page.dart';
import 'package:e_wms_mobile/pages/token_page.dart';
import 'package:flutter/material.dart';
import 'package:e_wms_mobile/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Waste Management System',
      themeMode: ThemeMode.system,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/locate': (context) => LocateBinPage(),
        '/token': (context) => TokenGeneratePage(),
        '/redeem': (context) => RedeemPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
