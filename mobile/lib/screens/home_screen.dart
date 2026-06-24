import 'package:flutter/material.dart';
import '../../core/navigation.dart';
import '../../core/mobile_layout.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_typography.dart';
import '../../l10n/app_strings.dart';
import '../../widgets/feature_icon_row.dart';
import '../../widgets/hero_orb.dart';
import '../../widgets/mobile_page.dart';
import '../../widgets/page_header.dart';
import '../../widgets/privacy_banner.dart';
import '../../widgets/reading_type_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    final langNotifier = LocaleProvider.of(context);

    return ValueListenableBuilder<AppLanguage>(
      valueListenable: langNotifier,
      builder: (context, lang, _) {
        return MobilePage(
          padding: MobileLayout.scrollPadding(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              HomeHeader(
                language: AppStrings.nameFor(lang),
                onLanguageChanged: (name) {
                  langNotifier.value = AppStrings.languageFromName(name);
                },
              ),
              const SizedBox(height: MobileLayout.gapSm),
              HeroOrb(
                line1: tr.heroLine1,
                freeWord: tr.heroFree,
                line2: tr.heroLine2,
              ),
              const SizedBox(height: MobileLayout.gapXs),
              Text(
                tr.heroSubtitle,
                textAlign: TextAlign.center,
                style: AppTypography.cardMeta.copyWith(fontSize: 13),
              ),
              const SizedBox(height: MobileLayout.gapMd),
              ReadingTypeCard(
                title: tr.faceReading,
                description: tr.faceDesc,
                icon: Icons.face_retouching_natural_outlined,
                accent: AppColors.accentBlue,
                onTap: () => context.openPage('/sample-reading'),
              ),
              const SizedBox(height: MobileLayout.gapSm),
              ReadingTypeCard(
                title: tr.handwritingReading,
                description: tr.handwritingDesc,
                icon: Icons.edit_outlined,
                accent: AppColors.primary,
                onTap: () => context.openPage('/sample-reading'),
              ),
              const SizedBox(height: MobileLayout.gapSm),
              ReadingTypeCard(
                title: tr.palmReading,
                description: tr.palmDesc,
                icon: Icons.back_hand_outlined,
                accent: AppColors.accentGreen,
                onTap: () => context.openPage('/sample-reading'),
              ),
              const SizedBox(height: MobileLayout.gapMd),
              FeatureIconRow(
                features: [
                  (
                    icon: Icons.psychology_outlined,
                    label: tr.feature1,
                    color: AppColors.accentBlue,
                  ),
                  (
                    icon: Icons.favorite_outline,
                    label: tr.feature2,
                    color: AppColors.accentPink,
                  ),
                  (
                    icon: Icons.work_outline,
                    label: tr.feature3,
                    color: AppColors.accentYellow,
                  ),
                  (
                    icon: Icons.trending_up,
                    label: tr.feature4,
                    color: AppColors.accentGreen,
                  ),
                ],
              ),
              const SizedBox(height: MobileLayout.gapMd),
              PrivacyBanner(
                title: tr.privacyPriority,
                description: tr.privacyDesc,
              ),
            ],
          ),
        );
      },
    );
  }
}
