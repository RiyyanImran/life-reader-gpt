import 'package:flutter/material.dart';
import '../../core/mobile_layout.dart';
import '../../core/theme/app_typography.dart';
import '../../l10n/app_strings.dart';
import '../../l10n/localized_content.dart';
import '../../widgets/glass_card.dart';

class DisclaimerScreen extends StatelessWidget {
  const DisclaimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;

    return SingleChildScrollView(
      padding: MobileLayout.scrollPadding(context),
      child: Column(
        children: [
          GlassCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tr.disclaimerTitle,
                  style: AppTypography.sectionHeading,
                ),
                const SizedBox(height: 20),
                Text(
                  tr.disclaimerMain,
                  style: AppTypography.cardTitleLg,
                ),
                const SizedBox(height: 16),
                Text(
                  tr.disclaimerSecondary,
                  style: AppTypography.cardBody,
                ),
                const SizedBox(height: 12),
                Text(
                  tr.disclaimerFooter,
                  style: AppTypography.cardMeta,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
