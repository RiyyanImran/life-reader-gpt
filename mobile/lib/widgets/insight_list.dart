import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';
import '../data/mock_data.dart';

class InsightList extends StatefulWidget {
  const InsightList({super.key, required this.items});

  final List<AccordionItem> items;

  @override
  State<InsightList> createState() => _InsightListState();
}

class _InsightListState extends State<InsightList> {
  int? _expandedIndex;

  IconData _iconFor(String icon) {
    switch (icon) {
      case 'person':
        return Icons.person_outline;
      case 'briefcase':
        return Icons.work_outline;
      case 'heart':
        return Icons.favorite_outline;
      case 'star':
        return Icons.star_outline;
      case 'warning':
        return Icons.warning_amber_outlined;
      case 'compass':
        return Icons.explore_outlined;
      case 'chat':
        return Icons.chat_bubble_outline;
      default:
        return Icons.auto_awesome_outlined;
    }
  }

  Color _colorFor(String icon) {
    switch (icon) {
      case 'person':
        return AppColors.accentBlue;
      case 'briefcase':
        return AppColors.accentYellow;
      case 'heart':
        return AppColors.accentPink;
      case 'star':
        return AppColors.accentGreen;
      case 'warning':
        return AppColors.accentYellow;
      case 'compass':
        return AppColors.primary;
      case 'chat':
        return AppColors.primary;
      default:
        return AppColors.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(widget.items.length, (index) {
        final item = widget.items[index];
        final isExpanded = _expandedIndex == index;
        final accent = _colorFor(item.icon);
        final bgColor = item.highlighted
            ? AppColors.primary.withValues(alpha: 0.2)
            : AppColors.card;

        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => setState(() {
                _expandedIndex = isExpanded ? null : index;
              }),
              borderRadius: BorderRadius.circular(14),
              child: Container(
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: item.highlighted
                        ? AppColors.primary.withValues(alpha: 0.6)
                        : AppColors.border,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 12,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: accent.withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Icon(_iconFor(item.icon), color: accent, size: 20),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              item.badge != null
                                  ? '${item.title} (${item.badge})'
                                  : item.title,
                              style: AppTypography.cardTitle.copyWith(
                                color: item.highlighted
                                    ? AppColors.textPrimary
                                    : AppColors.textBody,
                              ),
                            ),
                          ),
                          Icon(
                            isExpanded
                                ? Icons.keyboard_arrow_up
                                : Icons.chevron_right,
                            color: AppColors.textSecondary,
                          ),
                        ],
                      ),
                    ),
                    if (isExpanded)
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                        child: Text(item.content, style: AppTypography.cardBody),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
