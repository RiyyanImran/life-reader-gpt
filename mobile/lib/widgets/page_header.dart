import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';
import '../l10n/app_strings.dart';

/// Sub-page top bar: Back | Title | Home — matches mockup screens 2–9.
class SubPageHeader extends StatelessWidget {
  const SubPageHeader({
    super.key,
    required this.title,
    this.onBack,
    this.onHome,
  });

  final String title;
  final VoidCallback? onBack;
  final VoidCallback? onHome;

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;

    return SizedBox(
      height: 44,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            TextButton.icon(
              onPressed: onBack,
              icon: const Icon(Icons.arrow_back, size: 18, color: AppColors.textBody),
              label: Text(tr.back, style: AppTypography.navItem),
              style: TextButton.styleFrom(
                foregroundColor: AppColors.textBody,
                padding: const EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.cardTitle.copyWith(fontSize: 16),
              ),
            ),
            IconButton(
              onPressed: onHome,
              icon: const Icon(Icons.home_outlined, color: AppColors.textBody),
              tooltip: tr.navHome,
            ),
          ],
        ),
      ),
    );
  }
}

/// Home-only header: logo + language dropdown.
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.language,
    required this.onLanguageChanged,
  });

  final String language;
  final ValueChanged<String> onLanguageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            const Text('🌙', style: TextStyle(fontSize: 22)),
            const SizedBox(width: 8),
            const Expanded(child: _LogoText()),
            PopupMenuButton<String>(
              offset: const Offset(0, 40),
              onSelected: onLanguageChanged,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: AppColors.card,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      language,
                      style: AppTypography.navItem.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.keyboard_arrow_down, size: 18, color: AppColors.textBody),
                  ],
                ),
              ),
              itemBuilder: (context) => AppStrings.languageNames
                  .map(
                    (name) => PopupMenuItem(
                      value: name,
                      child: Text(
                        name,
                        style: TextStyle(
                          color: name == language
                              ? AppColors.primary
                              : AppColors.textBody,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _LogoText extends StatelessWidget {
  const _LogoText();

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'LifeReader',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          TextSpan(
            text: 'GPT',
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
