import 'package:flutter/material.dart';

/// Tracks where the user came from so Back returns to the previous page.
/// go_router ShellRoute siblings do not build a reliable pop stack on their own.
class NavigationHistory extends ChangeNotifier {
  NavigationHistory();

  final List<String> _paths = ['/'];

  String get currentPath => _paths.last;

  bool get canGoBack => _paths.length > 1;

  static NavigationHistory of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NavigationHistoryScope>()!
        .notifier!;
  }

  /// Drill-down: remember current page, then open the next one.
  void open(String path) {
    if (_paths.last == path) return;
    _paths.add(path);
    notifyListeners();
  }

  /// Back: drop current page and return the previous path (or null).
  String? back() {
    if (_paths.length <= 1) return null;
    _paths.removeLast();
    notifyListeners();
    return _paths.last;
  }

  /// Bottom nav tab: jump to a main section (no back to prior tab).
  void switchTab(String path) {
    _paths
      ..clear()
      ..add(path);
    notifyListeners();
  }

  /// Home button only: reset everything to home.
  void resetToHome() {
    _paths
      ..clear()
      ..add('/');
    notifyListeners();
  }
}

class NavigationHistoryScope extends InheritedNotifier<NavigationHistory> {
  const NavigationHistoryScope({
    super.key,
    required NavigationHistory notifier,
    required super.child,
  }) : super(notifier: notifier);
}
