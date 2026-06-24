import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'navigation_history.dart';

extension AppNavigation on BuildContext {
  NavigationHistory get _history => NavigationHistory.of(this);

  /// Open a page from a card/button — Back will return here.
  void openPage(String path) {
    _history.open(path);
    go(path);
  }

  /// Bottom nav: switch main tab (Back does not return to previous tab).
  void switchTab(String path) {
    _history.switchTab(path);
    go(path);
  }

  /// Top-right home icon only.
  void goHome() {
    _history.resetToHome();
    go('/');
  }

  /// Top-left back — returns to the page you came from.
  void goBack() {
    final previous = _history.back();
    if (previous != null) {
      go(previous);
    }
  }

  bool get canGoBack => _history.canGoBack;
}
