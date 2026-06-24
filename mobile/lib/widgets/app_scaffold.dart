import 'package:flutter/material.dart';
import '../core/mobile_layout.dart';
import '../core/navigation.dart';
import '../core/route_titles.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_typography.dart';
import '../data/mock_data.dart';
import '../l10n/app_strings.dart';
import 'page_header.dart';
import 'particle_background.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.child,
    required this.currentPath,
  });

  final Widget child;
  final String currentPath;

  bool get _isHome => currentPath == '/';

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.paddingOf(context).top;
    final bottomInset = MediaQuery.paddingOf(context).bottom;
    final navHeight = MobileLayout.bottomNavHeight + bottomInset;
    final tr = context.tr;

    return Scaffold(
      backgroundColor: AppColors.background,
      extendBody: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Positioned.fill(child: ParticleBackground()),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(top: topInset),
              child: Column(
                children: [
                  if (!_isHome)
                    SubPageHeader(
                      title: RouteTitles.forPath(currentPath, tr),
                      onBack: () => context.goBack(),
                      onHome: () => context.goHome(),
                    ),
                  if (!_isHome)
                    Container(
                      height: 1,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      color: AppColors.border.withValues(alpha: 0.5),
                    ),
                  Expanded(child: child),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: navHeight,
        padding: EdgeInsets.only(bottom: bottomInset, top: 2),
        decoration: BoxDecoration(
          color: AppColors.card.withValues(alpha: 0.97),
          border: Border(
            top: BorderSide(color: AppColors.primary.withValues(alpha: 0.5)),
          ),
        ),
        child: _BottomNavBar(currentPath: currentPath),
      ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({required this.currentPath});

  final String currentPath;

  String _shortLabel(String path, AppStrings tr) {
    final full = tr.navLabel(path);
    final words = full.split(' ');
    if (words.length >= 2 && full.length > 10) {
      return '${words.first}\n${words.sublist(1).join(' ')}';
    }
    return full;
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;

    return Row(
      children: navItems.map((item) {
        final isActive = currentPath == item.path;
        return Expanded(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => context.switchTab(item.path),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _iconFor(item.path),
                    size: 20,
                    color: isActive ? AppColors.primary : AppColors.textSecondary,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    _shortLabel(item.path, tr),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: AppTypography.navItem.copyWith(
                      fontSize: 8.5,
                      height: 1.05,
                      color: isActive ? AppColors.primary : AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  IconData _iconFor(String path) {
    switch (path) {
      case '/how-it-works':
        return Icons.route_outlined;
      case '/sample-reading':
        return Icons.description_outlined;
      case '/questions':
        return Icons.help_outline;
      case '/success-stories':
        return Icons.star_outline;
      case '/disclaimer':
        return Icons.info_outline;
      case '/my-readings':
        return Icons.history;
      default:
        return Icons.home_outlined;
    }
  }
}
