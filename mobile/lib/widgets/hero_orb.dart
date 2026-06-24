import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';

/// Glowing hero orb — scales down on narrow screens.
class HeroOrb extends StatelessWidget {
  const HeroOrb({
    super.key,
    required this.line1,
    required this.freeWord,
    required this.line2,
  });

  final String line1;
  final String freeWord;
  final String line2;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final outer = (constraints.maxWidth * 0.34).clamp(88.0, 120.0);
        final inner = outer * 0.78;

        return SizedBox(
          height: outer + 4,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: outer,
                height: outer,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      AppColors.primary.withValues(alpha: 0.45),
                      AppColors.primary.withValues(alpha: 0.12),
                      Colors.transparent,
                    ],
                    stops: const [0.2, 0.55, 1.0],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.3),
                      blurRadius: outer * 0.25,
                    ),
                  ],
                ),
              ),
              Container(
                width: inner,
                height: inner,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.primary.withValues(alpha: 0.5),
                    width: 1.5,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.cardElevated,
                      AppColors.card.withValues(alpha: 0.9),
                    ],
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(inner * 0.1),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                color: AppColors.textPrimary,
                                fontSize: inner * 0.11,
                                fontWeight: FontWeight.w700,
                                height: 1.1,
                              ),
                              children: [
                                TextSpan(text: '$line1 '),
                                TextSpan(
                                  text: freeWord,
                                  style: const TextStyle(
                                    color: AppColors.accentGold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            line2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.textPrimary,
                              fontSize: inner * 0.1,
                              fontWeight: FontWeight.w700,
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
