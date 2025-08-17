import 'package:e_wms_mobile/constants/auth.dart';
import 'package:e_wms_mobile/main_layout.dart';
import 'package:e_wms_mobile/pages/login_page.dart';
import 'package:e_wms_mobile/utilities/auth_service.dart';
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
      home: const SplashGate(),
      // Route guard: only allow /home when signed in
      onGenerateRoute: (settings) {
        if (settings.name == MainWrapper.route) {
          if (auth.isSignedIn) {
            return MaterialPageRoute(builder: (_) => const MainWrapper());
          } else {
            return MaterialPageRoute(builder: (_) => const SignInPage());
          }
        }
        return null; // fall back to default
      },
    );
  }
}

/// SplashGate listens to auth state and shows either Home or SignIn
class SplashGate extends StatelessWidget {
  const SplashGate({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<User?>(
      valueListenable: auth.currentUser,
      builder: (context, user, _) {
        if (user == null) {
          return const SignInPage();
        } else {
          return const MainWrapper();
        }
      },
    );
  }
}
