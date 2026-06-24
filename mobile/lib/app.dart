import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/disclaimer_screen.dart';
import 'screens/home_screen.dart';
import 'screens/how_it_works_screen.dart';
import 'screens/my_readings_screen.dart';
import 'screens/questions_answers_screen.dart';
import 'screens/questions_screen.dart';
import 'screens/reading_results_screen.dart';
import 'screens/sample_reading_screen.dart';
import 'screens/success_stories_screen.dart';
import 'widgets/app_scaffold.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return AppScaffold(
          currentPath: state.uri.path,
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: HomeScreen(),
          ),
        ),
        GoRoute(
          path: '/how-it-works',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: HowItWorksScreen(),
          ),
        ),
        GoRoute(
          path: '/sample-reading',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: SampleReadingScreen(),
          ),
        ),
        GoRoute(
          path: '/questions',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: QuestionsScreen(),
          ),
        ),
        GoRoute(
          path: '/success-stories',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: SuccessStoriesScreen(),
          ),
        ),
        GoRoute(
          path: '/disclaimer',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: DisclaimerScreen(),
          ),
        ),
        GoRoute(
          path: '/my-readings',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: MyReadingsScreen(),
          ),
        ),
        GoRoute(
          path: '/reading-results',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ReadingResultsScreen(),
          ),
        ),
        GoRoute(
          path: '/questions-answers',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: QuestionsAnswersScreen(),
          ),
        ),
      ],
    ),
  ],
);
