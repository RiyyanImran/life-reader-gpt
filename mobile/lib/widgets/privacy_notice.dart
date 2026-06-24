import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';
import 'glass_card.dart';

class PrivacyNotice extends StatelessWidget {
  const PrivacyNotice({
    super.key,
    this.title = 'Your Privacy Is Our Priority',
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.accentGreen.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppColors.accentGreen.withValues(alpha: 0.3),
              ),
            ),
            child: const Icon(
              Icons.shield_outlined,
              color: AppColors.accentGreen,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.cardTitleLg,
                ),
                const SizedBox(height: 6),
                const Text(
                  'Your images and data are encrypted and never shared with third parties. We respect your privacy at every step.',
                  style: AppTypography.cardBody,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
