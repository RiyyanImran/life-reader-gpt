import 'package:flutter/material.dart';
import '../core/theme/app_typography.dart';
import 'accent_icon_box.dart';
import 'glass_card.dart';

/// Compact horizontal reading card — minimal height on mobile.
class ReadingTypeCard extends StatelessWidget {
  const ReadingTypeCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.accent,
    this.onTap,
  });

  final String title;
  final String description;
  final IconData icon;
  final Color accent;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AccentIconBox(icon: icon, accent: accent),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.cardTitle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.cardBody.copyWith(
                    fontSize: 12,
                    height: 1.25,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: accent.withValues(alpha: 0.85),
            size: 20,
          ),
        ],
      ),
    );
  }
}
