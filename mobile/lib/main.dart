import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app.dart';
import 'core/mobile_layout.dart';
import 'core/navigation_history.dart';
import 'core/theme/app_theme.dart';
import 'l10n/app_strings.dart';
import 'l10n/localized_content.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF050816),
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const LifeReaderApp());
}

class LifeReaderApp extends StatefulWidget {
  const LifeReaderApp({super.key});

  @override
  State<LifeReaderApp> createState() => _LifeReaderAppState();
}

class _LifeReaderAppState extends State<LifeReaderApp> {
  final ValueNotifier<AppLanguage> _locale =
      ValueNotifier<AppLanguage>(AppLanguage.en);
  final NavigationHistory _navigationHistory = NavigationHistory();

  @override
  void dispose() {
    _locale.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NavigationHistoryScope(
      notifier: _navigationHistory,
      child: LocaleProvider(
        notifier: _locale,
        child: ValueListenableBuilder<AppLanguage>(
        valueListenable: _locale,
        builder: (context, language, _) {
          return MaterialApp.router(
            title: 'LifeReaderGPT',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.dark,
            routerConfig: appRouter,
            builder: (context, child) => ReadableTextScope(
              child: child ?? const SizedBox.shrink(),
            ),
          );
        },
      ),
      ),
    );
  }
}
