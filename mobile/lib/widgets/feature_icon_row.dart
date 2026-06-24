import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';
import 'accent_icon_box.dart';

class FeatureIconRow extends StatelessWidget {
  const FeatureIconRow({super.key, required this.features});

  final List<({IconData icon, String label, Color color})> features;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: features.map((f) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Column(
              children: [
                AccentIconBox(
                  icon: f.icon,
                  accent: f.color,
                  size: AccentIconSize.small,
                ),
                const SizedBox(height: 5),
                Text(
                  f.label,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.navItem.copyWith(
                    fontSize: 9.5,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textBody,
                    height: 1.15,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
