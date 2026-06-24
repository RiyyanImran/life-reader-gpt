import 'package:flutter/material.dart';
import '../core/responsive.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';
import '../data/mock_data.dart';
import 'glass_card.dart';

class HeroCardWidget extends StatelessWidget {
  const HeroCardWidget({super.key, required this.data});

  final HeroCardData data;

  IconData _icon() {
    switch (data.icon) {
      case 'face':
        return Icons.face_retouching_natural_outlined;
      case 'handwriting':
        return Icons.edit_outlined;
      default:
        return Icons.back_hand_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    final accent = AppColors.accentFor(data.accent);
    final compact = !AppBreakpoints.isTablet(context);

    return GlassCard(
      padding: EdgeInsets.all(compact ? 16 : 20),
      child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: compact ? 52 : 64,
              height: compact ? 52 : 64,
              decoration: BoxDecoration(
                color: accent.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: accent.withValues(alpha: 0.4)),
                boxShadow: [
                  BoxShadow(
                    color: accent.withValues(alpha: 0.2),
                    blurRadius: 12,
                  ),
                ],
              ),
              child: Icon(
                _icon(),
                color: accent,
                size: compact ? 26 : 32,
              ),
            ),
            SizedBox(height: compact ? 12 : 16),
            Text(
              data.title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: compact ? AppTypography.headingMd : AppTypography.headingLg,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  data.description,
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.textBody,
                    fontSize: compact ? AppTypography.bodySm : 14,
                    height: 1.45,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
