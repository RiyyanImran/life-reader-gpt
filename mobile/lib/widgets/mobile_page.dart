import 'package:flutter/material.dart';
import '../core/mobile_layout.dart';

/// Scrollable page body — no phantom space below content on mobile web.
class MobilePage extends StatelessWidget {
  const MobilePage({
    super.key,
    required this.child,
    this.padding,
  });

  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final pad = padding ?? MobileLayout.pagePadding(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: pad,
          child: child,
        );
      },
    );
  }
}
