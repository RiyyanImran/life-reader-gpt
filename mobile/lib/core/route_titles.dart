import '../../l10n/app_strings.dart';

class RouteTitles {
  RouteTitles._();

  static String forPath(String path, AppStrings tr) {
    switch (path) {
      case '/how-it-works':
        return tr.pageHowItWorks;
      case '/sample-reading':
        return tr.pageSampleReading;
      case '/questions':
        return tr.pageQuestions;
      case '/success-stories':
        return tr.pageSuccessStories;
      case '/disclaimer':
        return tr.pageDisclaimer;
      case '/my-readings':
        return tr.pageMyReadings;
      case '/reading-results':
        return tr.pageReadingResults;
      case '/questions-answers':
        return tr.pageQuestionsAnswers;
      default:
        return tr.pageHome;
    }
  }
}
