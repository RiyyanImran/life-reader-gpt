import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';
import '../data/mock_data.dart';
import 'glass_card.dart';

class TestimonialCardWidget extends StatelessWidget {
  const TestimonialCardWidget({super.key, required this.item});

  final StoryItem item;

  IconData _icon() {
    switch (item.icon) {
      case 'heart':
        return Icons.favorite_outline;
      case 'briefcase':
        return Icons.work_outline;
      case 'sparkles':
        return Icons.auto_awesome_outlined;
      case 'crown':
        return Icons.emoji_events_outlined;
      case 'rocket':
        return Icons.rocket_launch_outlined;
      default:
        return Icons.star_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    final accent = AppColors.accentFor(item.accent);

    return GlassCard(
      padding: const EdgeInsets.all(14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: accent.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: accent.withValues(alpha: 0.4)),
            ),
            child: Icon(_icon(), color: accent, size: 26),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.category,
                  style: AppTypography.cardTitleLg.copyWith(
                    color: accent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  '"${item.story}"',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.cardBody.copyWith(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
