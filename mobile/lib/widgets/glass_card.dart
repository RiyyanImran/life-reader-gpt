import 'dart:ui';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';

class GlassCard extends StatelessWidget {
  const GlassCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(12),
    this.onTap,
  });

  final Widget child;
  final EdgeInsets padding;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final useSolidCard = kIsWeb || width < 900;

    final decoration = BoxDecoration(
      color: useSolidCard
          ? AppColors.card
          : AppColors.card.withValues(alpha: 0.92),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: AppColors.primary.withValues(alpha: 0.35),
      ),
      boxShadow: [
        BoxShadow(
          color: AppColors.primary.withValues(alpha: 0.14),
          blurRadius: 20,
          spreadRadius: 0,
        ),
        const BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.45),
          blurRadius: 24,
          offset: Offset(0, 6),
        ),
      ],
    );

    final inner = Container(
      padding: padding,
      width: double.infinity,
      decoration: decoration,
      child: child,
    );

    final card = useSolidCard
        ? ClipRRect(borderRadius: BorderRadius.circular(20), child: inner)
        : ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: inner,
            ),
          );

    if (onTap != null) {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: card,
        ),
      );
    }
    return card;
  }
}
