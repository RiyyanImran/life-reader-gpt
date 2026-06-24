import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';

class CtaButton extends StatelessWidget {
  const CtaButton({
    super.key,
    required this.label,
    this.onPressed,
    this.secondary = false,
    this.icon,
    this.expanded = false,
    this.compact = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool secondary;
  final IconData? icon;
  final bool expanded;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final fontSize = compact ? AppTypography.bodyMd : AppTypography.bodyLg;
    final buttonHeight = compact ? 40.0 : 48.0;
    final hPadding = compact ? 14.0 : 16.0;

    final child = Row(
      mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) ...[
          Icon(icon, size: compact ? 16 : 18, color: Colors.white),
          SizedBox(width: compact ? 6 : 8),
        ],
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: fontSize,
            color: secondary ? AppColors.textPrimary : Colors.white,
          ),
        ),
      ],
    );

    if (secondary) {
      return SizedBox(
        width: expanded ? double.infinity : null,
        height: buttonHeight,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.textPrimary,
            padding: EdgeInsets.symmetric(horizontal: hPadding),
            side: BorderSide(color: AppColors.primary.withValues(alpha: 0.5)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(compact ? 8 : 12),
            ),
            backgroundColor: AppColors.card.withValues(alpha: 0.8),
          ),
          child: child,
        ),
      );
    }

    return SizedBox(
      width: expanded ? double.infinity : null,
      height: buttonHeight,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(compact ? 8 : 12),
          gradient: const LinearGradient(
            colors: [AppColors.primary, AppColors.primarySecondary],
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withValues(alpha: 0.4),
              blurRadius: compact ? 10 : 20,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: hPadding),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(compact ? 8 : 12),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
