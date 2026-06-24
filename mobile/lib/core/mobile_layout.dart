import 'package:flutter/material.dart';
import 'theme/app_colors.dart';

/// Shared mobile-first layout helpers used across every screen.
class MobileLayout {
  MobileLayout._();

  static const double phoneBreakpoint = 600;
  static const double bottomNavHeight = 58;

  static const double gapXs = 4;
  static const double gapSm = 8;
  static const double gapMd = 10;
  static const double gapLg = 14;
  static const double listItemGap = 8;

  static bool isPhone(BuildContext context) =>
      MediaQuery.sizeOf(context).width < phoneBreakpoint;

  static EdgeInsets pagePadding(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    final h = w >= 900 ? 20.0 : w >= phoneBreakpoint ? 16.0 : 10.0;
    return EdgeInsets.fromLTRB(h, 6, h, 4);
  }

  /// Bottom inset so content clears the nav bar (use on scroll views).
  static EdgeInsets scrollPadding(BuildContext context) {
    final bottomInset = MediaQuery.paddingOf(context).bottom;
    return pagePadding(context).copyWith(
      bottom: bottomNavHeight + bottomInset + 6,
    );
  }

  static double sectionGap(BuildContext context) => isPhone(context) ? 10 : 16;
}

/// Forces readable default text color for every descendant.
class ReadableTextScope extends StatelessWidget {
  const ReadableTextScope({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: AppColors.textPrimary,
        fontSize: 15,
        height: 1.45,
      ),
      child: child,
    );
  }
}
