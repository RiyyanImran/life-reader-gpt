import 'package:flutter/material.dart';
import '../core/navigation.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';
import '../data/mock_data.dart';
import '../l10n/app_strings.dart';
import 'glass_card.dart';

/// My Readings list card — colored title, date/time, View Reading + chevron.
class SavedReadingCard extends StatelessWidget {
  const SavedReadingCard({
    super.key,
    required this.item,
    this.onView,
  });

  final ReadingItem item;
  final VoidCallback? onView;

  IconData _icon() {
    switch (item.icon) {
      case 'face':
        return Icons.face_retouching_natural_outlined;
      case 'handwriting':
        return Icons.edit_outlined;
      case 'palm':
        return Icons.back_hand_outlined;
      case 'heart':
        return Icons.favorite_outline;
      default:
        return Icons.auto_awesome_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    final accent = AppColors.accentFor(item.accent);

    return GlassCard(
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: accent.withValues(alpha: 0.15),
              border: Border.all(color: accent.withValues(alpha: 0.5), width: 2),
            ),
            child: Icon(_icon(), color: accent, size: 24),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: AppTypography.cardTitle.copyWith(
                    color: accent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (item.date != null) ...[
                  const SizedBox(height: 4),
                  Text(item.date!, style: AppTypography.cardMeta),
                ],
              ],
            ),
          ),
          TextButton(
            onPressed: onView ?? () => context.openPage('/reading-results'),
            style: TextButton.styleFrom(
              foregroundColor: AppColors.primary,
              padding: const EdgeInsets.symmetric(horizontal: 8),
            ),
            child: Text(tr.viewReading, style: AppTypography.buttonLabel.copyWith(fontSize: 13)),
          ),
          IconButton(
            onPressed: onView ?? () => context.openPage('/reading-results'),
            icon: const Icon(Icons.chevron_right, color: AppColors.primary),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
          ),
        ],
      ),
    );
  }
}
