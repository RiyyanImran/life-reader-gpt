import 'package:flutter/material.dart';

enum AppLanguage { en, es, fr, de, pt }

class LocaleProvider extends InheritedNotifier<ValueNotifier<AppLanguage>> {
  LocaleProvider({
    super.key,
    required ValueNotifier<AppLanguage> notifier,
    required super.child,
  }) : super(notifier: notifier);

  static ValueNotifier<AppLanguage> of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<LocaleProvider>()!
        .notifier!;
  }

  static AppStrings strings(BuildContext context) {
    return AppStrings(of(context).value);
  }
}

extension L10n on BuildContext {
  AppStrings get tr => LocaleProvider.strings(this);
}

class AppStrings {
  AppStrings(this.lang);

  final AppLanguage lang;

  String pick(String en, String es, String fr, String de, String pt) {
    switch (lang) {
      case AppLanguage.es:
        return es;
      case AppLanguage.fr:
        return fr;
      case AppLanguage.de:
        return de;
      case AppLanguage.pt:
        return pt;
      default:
        return en;
    }
  }

  String get languageLabel => pick(
        'English',
        'Español',
        'Français',
        'Deutsch',
        'Português',
      );

  static const languageNames = [
    'English',
    'Español',
    'Français',
    'Deutsch',
    'Português',
  ];

  static AppLanguage languageFromName(String name) {
    switch (name) {
      case 'Español':
        return AppLanguage.es;
      case 'Français':
        return AppLanguage.fr;
      case 'Deutsch':
        return AppLanguage.de;
      case 'Português':
        return AppLanguage.pt;
      default:
        return AppLanguage.en;
    }
  }

  static String nameFor(AppLanguage language) {
    return AppStrings(language).languageLabel;
  }

  // Nav — full labels matching mockup
  String get navHome => pick('Home', 'Inicio', 'Accueil', 'Start', 'Início');
  String get navHowItWorks => pick(
        'How It Works',
        'Cómo funciona',
        'Comment',
        'So geht\'s',
        'Como funciona',
      );
  String get navSample => pick(
        'Sample',
        'Muestra',
        'Exemple',
        'Beispiel',
        'Amostra',
      );
  String get navQuestions =>
      pick('Questions', 'Preguntas', 'Questions', 'Fragen', 'Perguntas');
  String get navStories =>
      pick('Stories', 'Historias', 'Histoires', 'Geschichten', 'Histórias');
  String get navDisclaimer =>
      pick('Disclaimer', 'Aviso', 'Avert.', 'Hinweis', 'Aviso');
  String get navMyReadings =>
      pick('My Readings', 'Mis lecturas', 'Mes lectures', 'Meine', 'Minhas');

  // Page header titles
  String get pageHome => pick('Home', 'Inicio', 'Accueil', 'Start', 'Início');
  String get pageHowItWorks =>
      pick('How It Works', 'Cómo funciona', 'Comment', 'So geht\'s', 'Como funciona');
  String get pageSampleReading =>
      pick('Sample Reading', 'Muestra', 'Exemple', 'Beispiel', 'Amostra');
  String get pageQuestions =>
      pick('Questions', 'Preguntas', 'Questions', 'Fragen', 'Perguntas');
  String get pageSuccessStories =>
      pick('Success Stories', 'Historias', 'Histoires', 'Geschichten', 'Histórias');
  String get pageDisclaimer =>
      pick('Disclaimer', 'Aviso', 'Avertissement', 'Haftung', 'Aviso');
  String get pageMyReadings =>
      pick('My Readings', 'Mis lecturas', 'Mes lectures', 'Meine Lesungen', 'Minhas');
  String get pageReadingResults =>
      pick('Your Reading', 'Tu lectura', 'Votre lecture', 'Ihre Lesung', 'Sua leitura');
  String get pageQuestionsAnswers =>
      pick('Questions & Answers', 'Preguntas y respuestas', 'Q&R', 'Fragen', 'Perguntas');

  String get back => pick('Back', 'Atrás', 'Retour', 'Zurück', 'Voltar');

  String get savedReadings =>
      pick('YOUR SAVED READINGS', 'TUS LECTURAS', 'VOS LECTURES', 'IHRE LESUNGEN', 'SUAS LEITURAS');
  String get whatPeopleSaying => pick(
        'WHAT PEOPLE ARE SAYING',
        'LO QUE DICEN',
        'CE QU\'ILS DISENT',
        'STIMMEN',
        'O QUE DIZEM',
      );
  String get personalInsights => pick(
        'YOUR PERSONAL INSIGHTS',
        'TUS PERSPECTIVAS',
        'VOS INSIGHTS',
        'IHRE EINBLICKE',
        'SUAS PERCEPÇÕES',
      );
  String get viewReading =>
      pick('View Reading', 'Ver lectura', 'Voir lecture', 'Lesung ansehen', 'Ver leitura');
  String get unlockFull => pick(
        'Unlock Your Full Reading Only \$5',
        'Desbloquear lectura \$5',
        'Débloquer pour 5\$',
        'Vollständig für 5\$',
        'Desbloquear por \$5',
      );
  String get aiAnswer => pick('AI Answer:', 'Respuesta IA:', 'Réponse IA:', 'KI-Antwort:', 'Resposta IA:');
  String get askAnother =>
      pick('Ask Another Question', 'Otra pregunta', 'Autre question', 'Weitere Frage', 'Outra pergunta');
  String get viewAllReadings =>
      pick('View All My Readings', 'Ver todas', 'Voir tout', 'Alle ansehen', 'Ver todas');
  String get savePdf => pick('Save PDF', 'Guardar PDF', 'Enregistrer PDF', 'PDF speichern', 'Salvar PDF');
  String get screenshot =>
      pick('Screenshot', 'Captura', 'Capture', 'Screenshot', 'Captura');
  String get askMoreQuestions => pick(
        'Ask More Questions',
        'Más preguntas',
        'Plus de questions',
        'Mehr Fragen',
        'Mais perguntas',
      );

  String get privacyPriority => pick(
        'YOUR PRIVACY IS OUR PRIORITY',
        'TU PRIVACIDAD ES PRIORIDAD',
        'VOTRE VIE PRIVÉE',
        'IHRE PRIVATSPHÄRE',
        'SUA PRIVACIDADE',
      );

  String navLabel(String path) {
    switch (path) {
      case '/how-it-works':
        return navHowItWorks;
      case '/sample-reading':
        return navSample;
      case '/questions':
        return navQuestions;
      case '/success-stories':
        return navStories;
      case '/disclaimer':
        return navDisclaimer;
      case '/my-readings':
        return navMyReadings;
      default:
        return navHome;
    }
  }

  // Home
  String get heroLine1 => pick('TRY YOUR', 'PRUEBA TU', 'ESSAYEZ VOTRE', 'TESTEN SIE', 'EXPERIMENTE');
  String get heroFree => pick('FREE', 'GRATIS', 'GRATUIT', 'KOSTENLOS', 'GRÁTIS');
  String get heroLine2 => pick(
        'LIFE READER SAMPLE',
        'MUESTRA LIFE READER',
        'ÉCHANTILLON LIFE READER',
        'LIFE READER PROBE',
        'AMOSTRA LIFE READER',
      );
  String get heroSubtitle => pick(
        'Choose your reading:',
        'Elige tu lectura:',
        'Choisissez:',
        'Wählen Sie:',
        'Escolha:',
      );

  String get faceReading =>
      pick('FACE READING', 'LECTURA ROSTRO', 'LECTURE VISAGE', 'GESICHT', 'LEITURA ROSTO');
  String get faceDesc => pick(
        'Upload a photo to reveal personality, strengths, and life path.',
        'Sube una foto para revelar personalidad y fortalezas.',
        'Téléchargez une photo pour révéler votre personnalité.',
        'Laden Sie ein Foto hoch für Persönlichkeitsanalyse.',
        'Envie uma foto para revelar personalidade e forças.',
      );

  String get handwritingReading => pick(
        'HANDWRITING READING',
        'LECTURA ESCRITURA',
        'LECTURE ÉCRITURE',
        'SCHRIFT',
        'LEITURA ESCRITA',
      );
  String get handwritingDesc => pick(
        'Analyze handwriting to uncover traits.',
        'Analiza la escritura para descubrir rasgos.',
        'Analysez l\'écriture pour découvrir vos traits.',
        'Analysieren Sie Handschrift für Merkmale.',
        'Analise a escrita para descobrir traços.',
      );

  String get palmReading =>
      pick('PALM READING', 'LECTURA PALMA', 'LECTURE PAUME', 'HAND', 'LEITURA PALMA');
  String get palmDesc => pick(
        'Explore destiny and opportunities through palm lines.',
        'Explora el destino a través de las líneas de la palma.',
        'Explorez le destin via les lignes de la paume.',
        'Entdecken Sie Schicksal durch Handlinien.',
        'Explore o destino pelas linhas da palma.',
      );

  String get feature1 => pick(
        'PERSONALITY INSIGHTS',
        'PERSONALIDAD',
        'PERSONNALITÉ',
        'PERSÖNLICHKEIT',
        'PERSONALIDADE',
      );
  String get feature2 => pick(
        'RELATIONSHIP GUIDANCE',
        'RELACIONES',
        'RELATIONS',
        'BEZIEHUNGEN',
        'RELACIONAMENTOS',
      );
  String get feature3 => pick(
        'CAREER & BUSINESS',
        'CARRERA',
        'CARRIÈRE',
        'KARRIERE',
        'CARREIRA',
      );
  String get feature4 => pick(
        'STRENGTHS & OPPORTUNITIES',
        'FORTALEZAS',
        'FORCES',
        'STÄRKEN',
        'OPORTUNIDADES',
      );

  String get privacyTitle => pick(
        'Privacy Protected',
        'Privacidad protegida',
        'Vie privée protégée',
        'Datenschutz',
        'Privacidade protegida',
      );
  String get privacyDesc => pick(
        'Your images and data are encrypted and never shared with third parties.',
        'Tus imágenes y datos están encriptados y nunca se comparten.',
        'Vos images et données sont chiffrées et jamais partagées.',
        'Ihre Bilder und Daten werden verschlüsselt und nie geteilt.',
        'Suas imagens e dados são criptografados e nunca compartilhados.',
      );

  String get startFree =>
      pick('Start Free', 'Empezar Gratis', 'Commencer', 'Kostenlos', 'Começar Grátis');
  String get getReading =>
      pick('Get Reading', 'Obtener', 'Obtenir', 'Lesung', 'Obter');

  // Sample page
  String get sampleTitle =>
      pick('SAMPLE READINGS', 'MUESTRAS', 'EXEMPLES', 'BEISPIELE', 'AMOSTRAS');
  String get sampleSubtitle => pick(
        'Preview your AI reading',
        'Vista previa de lectura',
        'Aperçu de lecture',
        'Lesungsvorschau',
        'Prévia da leitura',
      );
  String get faceSampleTitle =>
      pick('Face Sample', 'Muestra Rostro', 'Exemple Visage', 'Gesicht', 'Amostra Rosto');
  String get faceSampleText => pick(
        'Natural leader with strong intuition and empathy.',
        'Líder natural con intuición y empatía.',
        'Leader naturel avec intuition.',
        'Natürlicher Anführer mit Intuition.',
        'Líder natural com intuição.',
      );
  String get handwritingSampleTitle =>
      pick('Writing Sample', 'Muestra Escritura', 'Exemple Écriture', 'Schrift', 'Amostra Escrita');
  String get handwritingSampleText => pick(
        'Creative mind with determination and attention to detail.',
        'Mente creativa y determinada.',
        'Esprit créatif et déterminé.',
        'Kreativ und entschlossen.',
        'Mente criativa e determinada.',
      );
  String get palmSampleTitle =>
      pick('Palm Sample', 'Muestra Palma', 'Exemple Paume', 'Hand', 'Amostra Palma');
  String get palmSampleText => pick(
        'Life path rich with opportunity and resilience.',
        'Camino de vida con oportunidades.',
        'Chemin de vie riche en opportunités.',
        'Lebensweg voller Chancen.',
        'Caminho com oportunidades.',
      );
  String get unlockTitle =>
      pick('Unlock Full Reading', 'Desbloquear Lectura', 'Débloquer lecture', 'Vollständig', 'Desbloquear');
  String get unlockPrice => pick('Only \$5', 'Solo \$5', 'Seulement 5\$', 'Nur 5\$', 'Só \$5');
  String get getFullReading =>
      pick('Get Full Reading', 'Obtener Lectura', 'Obtenir lecture', 'Lesung holen', 'Obter Leitura');

  List<String> get features => [feature1, feature2, feature3, feature4];
}
