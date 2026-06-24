import 'package:flutter/material.dart';

/// Shared icon container — same rounded-square shape everywhere.
class AccentIconBox extends StatelessWidget {
  const AccentIconBox({
    super.key,
    required this.icon,
    required this.accent,
    this.size = AccentIconSize.medium,
  });

  final IconData icon;
  final Color accent;
  final AccentIconSize size;

  static const double radius = 12;

  double get _boxSize => switch (size) {
        AccentIconSize.small => 40,
        AccentIconSize.medium => 48,
      };

  double get _iconSize => switch (size) {
        AccentIconSize.small => 20,
        AccentIconSize.medium => 24,
      };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _boxSize,
      height: _boxSize,
      decoration: BoxDecoration(
        color: accent.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: accent.withValues(alpha: 0.45)),
      ),
      child: Icon(icon, color: accent, size: _iconSize),
    );
  }
}

enum AccentIconSize { small, medium }
