import 'package:flutter/material.dart';
import '../core/navigation.dart';
import '../core/mobile_layout.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';
import '../data/mock_data.dart';
import '../l10n/app_strings.dart';
import 'glass_card.dart';

class ReadingCardWidget extends StatelessWidget {
  const ReadingCardWidget({
    super.key,
    required this.item,
    this.showArrow = false,
    this.showButton = false,
    this.compact,
    this.onButtonPressed,
  });

  final ReadingItem item;
  final bool showArrow;
  final bool showButton;
  final bool? compact;
  final VoidCallback? onButtonPressed;

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
    final isCompact = compact ?? MobileLayout.isPhone(context);
    final accent = AppColors.accentFor(item.accent);
    final tr = context.tr;

    return GlassCard(
      padding: EdgeInsets.all(isCompact ? 14 : 18),
      onTap: showArrow ? () => context.openPage('/reading-results') : null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: accent.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: accent.withValues(alpha: 0.45)),
            ),
            child: Icon(_icon(), color: accent, size: 24),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title.toUpperCase(),
                  style: AppTypography.cardTitle.copyWith(
                    color: accent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3,
                  ),
                ),
                if (item.date != null) ...[
                  const SizedBox(height: 4),
                  Text(item.date!, style: AppTypography.cardMeta),
                ],
                if (item.sample != null) ...[
                  const SizedBox(height: 6),
                  Text(
                    item.sample!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.cardBody,
                  ),
                ],
                if (showButton) ...[
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: onButtonPressed ??
                          () => context.openPage('/reading-results'),
                      child: Text(
                        tr.viewReading,
                        style: AppTypography.buttonLabel.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
          if (showArrow)
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Icon(Icons.chevron_right, color: AppColors.primary, size: 24),
            ),
        ],
      ),
    );
  }
}
