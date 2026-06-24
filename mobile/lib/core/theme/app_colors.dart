import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const background = Color(0xFF050816);
  static const card = Color(0xFF0C1428);
  static const cardElevated = Color(0xFF111B33);
  static const primary = Color(0xFF8B5CF6);
  static const primarySecondary = Color(0xFFA855F7);
  static const accentBlue = Color(0xFF3B82F6);
  static const accentGreen = Color(0xFF22C55E);
  static const accentPink = Color(0xFFEC4899);
  static const accentYellow = Color(0xFFFACC15);
  static const accentGold = Color(0xFFE8B923);
  static const textPrimary = Color(0xFFFFFFFF);
  static const textSecondary = Color(0xFFB8C2D6);
  static const textBody = Color(0xFFDCE3F0);
  static const border = Color.fromRGBO(138, 92, 246, 0.35);

  static Color accentFor(String accent) {
    switch (accent) {
      case 'blue':
        return accentBlue;
      case 'green':
        return accentGreen;
      case 'pink':
        return accentPink;
      case 'yellow':
        return accentYellow;
      case 'gold':
        return accentGold;
      default:
        return primary;
    }
  }
}
