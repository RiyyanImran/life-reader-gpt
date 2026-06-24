import 'package:flutter/material.dart';
import '../core/navigation.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';
import '../data/mock_data.dart';
import 'glass_card.dart';

class QuestionCardWidget extends StatelessWidget {
  const QuestionCardWidget({super.key, required this.item});

  final CategoryItem item;

  IconData _icon() {
    switch (item.icon) {
      case 'heart':
        return Icons.favorite_outline;
      case 'briefcase':
        return Icons.work_outline;
      case 'trending':
        return Icons.trending_up;
      case 'users':
        return Icons.people_outline;
      case 'sprout':
        return Icons.spa_outlined;
      default:
        return Icons.auto_awesome_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    final accent = AppColors.accentFor(item.accent);

    return GlassCard(
      onTap: () => context.openPage('/questions-answers'),
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: accent.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: accent.withValues(alpha: 0.4)),
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
                  style: AppTypography.cardTitleLg.copyWith(
                    color: accent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(item.description, style: AppTypography.cardBody),
              ],
            ),
          ),
          Icon(Icons.chevron_right, color: accent.withValues(alpha: 0.8)),
        ],
      ),
    );
  }
}
