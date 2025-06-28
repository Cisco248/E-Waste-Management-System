import 'package:flutter/material.dart';

class ColorConstant {
  const ColorConstant._();

  // Primary Colors
  static const Color primary = Color(0xFF0D47A1); // Blue
  static const Color primaryLight = Color(0xFF5472D3);
  static const Color primaryDark = Color(0xFF002171);

  // Secondary Colors
  static const Color secondary = Color(0xFF00BCD4); // Cyan
  static const Color secondaryLight = Color(0xFF62efff);
  static const Color secondaryDark = Color(0xFF008ba3);

  // Accent / Highlight Colors
  static const Color accent = Color(0xFFFFC107); // Amber

  // Backgrounds
  static const Color lightBackground = Color(0xFFFFFFFF); // White
  static const Color darkBackground = Color(0xFF121212); // Dark theme bg

  // Text Colors
  static const Color textPrimary = Color(0xFF212121); // Almost black
  static const Color textSecondary = Color(0xFF757575); // Grey

  // Status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF9800);
  static const Color error = Color(0xFFF44336);
  static const Color info = Color(0xFF2196F3);

  // Disabled / Divider
  static const Color disabled = Color(0xFFBDBDBD);
  static const Color divider = Color(0xFFBDBDBD);

  static const Color lightshadowcolor = Color.fromARGB(100, 0, 0, 0);
  static const Color darkshadowcolor = Color.fromARGB(100, 255, 255, 255);

  // static const Color lightheaderbgcolor = Color(value);
  // static const Color darkheaderbgcolor = Color(value);

  static const Color lightcardbgcolor = Color(0xFFEBEBEB);
  static const Color darkcardbgcolor = Color(0xFF1B1B1B);
}
