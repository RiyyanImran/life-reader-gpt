import 'package:flutter/material.dart';
import '../core/responsive.dart';

/// Lays out equal-height cards in a horizontal row.
/// - Wide screens: 3+ cards in one row, equal width
/// - Narrow screens: horizontal scroll with equal card sizes
class ResponsiveCardRow extends StatelessWidget {
  const ResponsiveCardRow({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.cardHeight = 268,
    this.spacing = 14,
  });

  final int itemCount;
  final Widget Function(BuildContext context, int index) itemBuilder;
  final double cardHeight;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isWide = AppBreakpoints.isTablet(context);

    if (isWide) {
      return SizedBox(
        height: cardHeight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(itemCount, (index) {
            return Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: index < itemCount - 1 ? spacing : 0,
                ),
                child: itemBuilder(context, index),
              ),
            );
          }),
        ),
      );
    }

    // Mobile: horizontal scroll — equal width & height cards
    final horizontalPadding = 20.0;
    final available = width - horizontalPadding;
    final cardWidth = (available * 0.82).clamp(240.0, 300.0);

    return SizedBox(
      height: cardHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        itemCount: itemCount,
        separatorBuilder: (_, _) => SizedBox(width: spacing),
        itemBuilder: (context, index) => SizedBox(
          width: cardWidth,
          height: cardHeight,
          child: itemBuilder(context, index),
        ),
      ),
    );
  }
}
