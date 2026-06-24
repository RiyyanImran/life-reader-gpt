import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get dark {
    final base = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        onPrimary: Colors.white,
        secondary: AppColors.primarySecondary,
        onSecondary: Colors.white,
        surface: AppColors.card,
        onSurface: AppColors.textPrimary,
        onSurfaceVariant: AppColors.textBody,
      ),
    );

    final inter = GoogleFonts.interTextTheme(base.textTheme).apply(
      bodyColor: AppColors.textPrimary,
      displayColor: AppColors.textPrimary,
    );

    return base.copyWith(
      textTheme: inter.copyWith(
        displayLarge: inter.displayLarge?.copyWith(color: AppColors.textPrimary),
        displayMedium: inter.displayMedium?.copyWith(color: AppColors.textPrimary),
        displaySmall: inter.displaySmall?.copyWith(color: AppColors.textPrimary),
        headlineLarge: inter.headlineLarge?.copyWith(color: AppColors.textPrimary),
        headlineMedium: inter.headlineMedium?.copyWith(color: AppColors.textPrimary),
        headlineSmall: inter.headlineSmall?.copyWith(color: AppColors.textPrimary),
        titleLarge: inter.titleLarge?.copyWith(color: AppColors.textPrimary),
        titleMedium: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: AppTypography.headingMd,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: inter.titleSmall?.copyWith(color: AppColors.textPrimary),
        bodyLarge: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: AppTypography.bodyLg,
          height: 1.5,
        ),
        bodyMedium: const TextStyle(
          color: AppColors.textBody,
          fontSize: AppTypography.bodyMd,
          height: 1.45,
        ),
        bodySmall: const TextStyle(
          color: AppColors.textBody,
          fontSize: AppTypography.bodySm,
          height: 1.4,
        ),
        labelLarge: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: AppTypography.labelLg,
          fontWeight: FontWeight.w600,
        ),
        labelMedium: const TextStyle(
          color: AppColors.textBody,
          fontSize: AppTypography.labelMd,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: const TextStyle(
          color: AppColors.textSecondary,
          fontSize: AppTypography.labelMd,
          fontWeight: FontWeight.w500,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        foregroundColor: AppColors.textPrimary,
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: AppColors.card,
      ),
    );
  }
}
