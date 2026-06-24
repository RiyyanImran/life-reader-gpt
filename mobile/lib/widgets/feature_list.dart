import 'package:flutter/material.dart';
import '../core/responsive.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';
import 'glass_card.dart';

class FeatureList extends StatelessWidget {
  const FeatureList({super.key, required this.features});

  final List<String> features;

  @override
  Widget build(BuildContext context) {
    final isWide = AppBreakpoints.isTablet(context);

    if (isWide) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: features.map((feature) {
          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: feature != features.last ? 10 : 0,
              ),
              child: _FeatureTile(feature: feature, compact: false),
            ),
          );
        }).toList(),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 60,
      ),
      itemCount: features.length,
      itemBuilder: (context, index) =>
          _FeatureTile(feature: features[index], compact: true),
    );
  }
}

class _FeatureTile extends StatelessWidget {
  const _FeatureTile({required this.feature, required this.compact});

  final String feature;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      padding: EdgeInsets.symmetric(
        horizontal: compact ? 10 : 12,
        vertical: compact ? 10 : 14,
      ),
      child: Row(
        children: [
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: AppColors.accentGreen.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check,
              size: 15,
              color: AppColors.accentGreen,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              feature,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppColors.textBody,
                fontWeight: FontWeight.w500,
                fontSize: compact ? AppTypography.bodySm : 13,
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
