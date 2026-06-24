import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/navigation.dart';
import '../../core/mobile_layout.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_typography.dart';
import '../../l10n/app_strings.dart';
import '../../l10n/localized_content.dart';
import '../../widgets/cta_button.dart';
import '../../widgets/glass_card.dart';

class QuestionsAnswersScreen extends StatelessWidget {
  const QuestionsAnswersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;

    return SingleChildScrollView(
      padding: MobileLayout.scrollPadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GlassCard(
            padding: const EdgeInsets.all(14),
            child: Text(
              'Q: ${tr.qaQuestion}',
              style: AppTypography.cardTitle.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 12),
          GlassCard(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(tr.aiAnswer, style: AppTypography.cardTitle),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: tr.qaAnswer));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(tr.copiedToClipboard)),
                        );
                      },
                      icon: const Icon(Icons.copy_outlined, color: AppColors.textBody, size: 20),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(tr.qaAnswer, style: AppTypography.cardBody),
              ],
            ),
          ),
          const SizedBox(height: 24),
          CtaButton(
            label: tr.askAnother,
            expanded: true,
            onPressed: () => context.openPage('/questions'),
          ),
          const SizedBox(height: 10),
          CtaButton(
            label: tr.viewAllReadings,
            secondary: true,
            expanded: true,
            onPressed: () => context.openPage('/my-readings'),
          ),
        ],
      ),
    );
  }
}
