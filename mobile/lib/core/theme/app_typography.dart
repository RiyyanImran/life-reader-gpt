import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Mobile-first type scale for readable, consistent UI across all screens.
class AppTypography {
  AppTypography._();

  static const double display = 22;
  static const double displaySm = 20;
  static const double headingLg = 18;
  static const double headingMd = 16;
  static const double headingSm = 15;

  static const double bodyLg = 15;
  static const double bodyMd = 14;
  static const double bodySm = 13;

  static const double labelLg = 12;
  static const double labelMd = 11;
  static const double navLabel = 12;

  static const double sectionTitle = 22;
  static const double sectionSubtitle = 14;

  static const TextStyle heroTitle = TextStyle(
    color: AppColors.textPrimary,
    fontSize: displaySm,
    fontWeight: FontWeight.bold,
    height: 1.2,
  );

  static const TextStyle heroAccent = TextStyle(
    color: AppColors.textPrimary,
    fontSize: headingSm,
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  static const TextStyle heroSubtitle = TextStyle(
    color: AppColors.textBody,
    fontSize: bodySm,
    fontWeight: FontWeight.w400,
    height: 1.35,
  );

  static const TextStyle sectionHeading = TextStyle(
    color: AppColors.textPrimary,
    fontSize: sectionTitle,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
    height: 1.2,
  );

  static const TextStyle sectionHeadingLg = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
    height: 1.2,
  );

  static const TextStyle sectionSubheading = TextStyle(
    color: AppColors.textBody,
    fontSize: sectionSubtitle,
    fontWeight: FontWeight.w400,
    height: 1.35,
  );

  static const TextStyle cardTitle = TextStyle(
    color: AppColors.textPrimary,
    fontSize: headingMd,
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  static const TextStyle cardTitleLg = TextStyle(
    color: AppColors.textPrimary,
    fontSize: headingLg,
    fontWeight: FontWeight.w600,
    height: 1.25,
  );

  static const TextStyle cardBody = TextStyle(
    color: AppColors.textBody,
    fontSize: bodySm,
    fontWeight: FontWeight.w400,
    height: 1.35,
  );

  static const TextStyle cardMeta = TextStyle(
    color: AppColors.textSecondary,
    fontSize: bodySm,
    fontWeight: FontWeight.w500,
    height: 1.3,
  );

  static const TextStyle featureLabel = TextStyle(
    color: AppColors.textBody,
    fontSize: bodySm,
    fontWeight: FontWeight.w500,
    height: 1.25,
  );

  static const TextStyle navItem = TextStyle(
    color: AppColors.textBody,
    fontSize: navLabel,
    fontWeight: FontWeight.w600,
    height: 1.15,
  );

  static const TextStyle buttonLabel = TextStyle(
    color: AppColors.textPrimary,
    fontSize: bodyMd,
    fontWeight: FontWeight.w600,
  );
}
