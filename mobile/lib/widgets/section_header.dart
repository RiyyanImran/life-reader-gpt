import 'package:flutter/material.dart';
import '../core/mobile_layout.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.centered = true,
    this.compact,
  });

  final String title;
  final String? subtitle;
  final bool centered;
  final bool? compact;

  @override
  Widget build(BuildContext context) {
    final isCompact = compact ?? MobileLayout.isPhone(context);

    return Column(
      crossAxisAlignment:
          centered ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: centered ? TextAlign.center : TextAlign.start,
          style: isCompact
              ? AppTypography.sectionHeading
              : AppTypography.sectionHeadingLg,
        ),
        if (subtitle != null) ...[
          SizedBox(height: isCompact ? 6 : 12),
          Text(
            subtitle!,
            textAlign: centered ? TextAlign.center : TextAlign.start,
            style: AppTypography.sectionSubheading.copyWith(
              fontSize: isCompact
                  ? AppTypography.sectionSubtitle
                  : AppTypography.bodyLg,
            ),
          ),
        ],
      ],
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(this.text, {super.key, this.style});

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          AppColors.primary,
          AppColors.primarySecondary,
          AppColors.accentBlue,
        ],
      ).createShader(bounds),
      child: Text(
        text,
        style: (style ??
                const TextStyle(fontSize: 48, fontWeight: FontWeight.bold))
            .copyWith(color: Colors.white),
      ),
    );
  }
}
