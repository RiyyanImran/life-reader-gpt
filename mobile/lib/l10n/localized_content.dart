import '../data/mock_data.dart';
import 'app_strings.dart';

/// All user-visible content localized per current language.
extension LocalizedContent on AppStrings {
  // ── How It Works ──────────────────────────────────────────────
  List<TimelineStep> get timelineSteps => [
        TimelineStep(
          step: 1,
          title: pick(
            'Choose Reading',
            'Elige lectura',
            'Choisir lecture',
            'Lesung wählen',
            'Escolha leitura',
          ),
          description: pick(
            'Select from face, handwriting, or palm reading to begin your journey.',
            'Elige rostro, escritura o palma para comenzar.',
            'Choisissez visage, écriture ou paume pour commencer.',
            'Wählen Sie Gesicht, Schrift oder Handfläche.',
            'Escolha rosto, escrita ou palma para começar.',
          ),
        ),
        TimelineStep(
          step: 2,
          title: pick(
            'Upload Your Image',
            'Sube tu imagen',
            'Téléchargez image',
            'Bild hochladen',
            'Envie sua imagem',
          ),
          description: pick(
            'Securely upload a photo or handwriting sample for AI analysis.',
            'Sube de forma segura una foto o muestra de escritura.',
            'Téléchargez une photo ou un échantillon d\'écriture en sécurité.',
            'Laden Sie sicher ein Foto oder Schriftprobe hoch.',
            'Envie com segurança uma foto ou amostra de escrita.',
          ),
        ),
        TimelineStep(
          step: 3,
          title: pick('AI Analysis', 'Análisis IA', 'Analyse IA', 'KI-Analyse', 'Análise IA'),
          description: pick(
            'Our advanced AI examines patterns and reveals hidden insights.',
            'Nuestra IA avanzada examina patrones y revela insights ocultos.',
            'Notre IA avancée examine les motifs et révèle des insights cachés.',
            'Unsere KI analysiert Muster und enthüllt verborgene Erkenntnisse.',
            'Nossa IA avançada examina padrões e revela insights ocultos.',
          ),
        ),
        TimelineStep(
          step: 4,
          title: pick(
            'Get Free Preview',
            'Vista previa gratis',
            'Aperçu gratuit',
            'Kostenlose Vorschau',
            'Prévia grátis',
          ),
          description: pick(
            'Receive a complimentary preview of your personalized reading.',
            'Recibe una vista previa gratuita de tu lectura personalizada.',
            'Recevez un aperçu gratuit de votre lecture personnalisée.',
            'Erhalten Sie eine kostenlose Vorschau Ihrer personalisierten Lesung.',
            'Receba uma prévia gratuita da sua leitura personalizada.',
          ),
        ),
        TimelineStep(
          step: 5,
          title: pick(
            'Unlock Full Reading',
            'Desbloquear lectura',
            'Débloquer lecture',
            'Vollständige Lesung',
            'Desbloquear leitura',
          ),
          description: pick(
            'Access your complete in-depth analysis for just \$5.',
            'Accede al análisis completo por solo \$5.',
            'Accédez à l\'analyse complète pour seulement 5\$.',
            'Vollständige Analyse für nur 5\$.',
            'Acesse a análise completa por apenas \$5.',
          ),
        ),
        TimelineStep(
          step: 6,
          title: pick(
            'Ask Questions',
            'Hacer preguntas',
            'Poser questions',
            'Fragen stellen',
            'Fazer perguntas',
          ),
          description: pick(
            'Get answers to specific life questions based on your reading.',
            'Obtén respuestas a preguntas de vida basadas en tu lectura.',
            'Obtenez des réponses à vos questions de vie basées sur votre lecture.',
            'Erhalten Sie Antworten auf Lebensfragen basierend auf Ihrer Lesung.',
            'Obtenha respostas sobre a vida com base na sua leitura.',
          ),
        ),
      ];

  // ── Sample Readings ───────────────────────────────────────────
  List<ReadingItem> get sampleReadings => [
        ReadingItem(
          title: faceSampleTitle,
          accent: 'blue',
          icon: 'face',
          sample: faceSampleText,
        ),
        ReadingItem(
          title: handwritingSampleTitle,
          accent: 'purple',
          icon: 'handwriting',
          sample: handwritingSampleText,
        ),
        ReadingItem(
          title: palmSampleTitle,
          accent: 'green',
          icon: 'palm',
          sample: palmSampleText,
        ),
      ];

  // ── Questions ─────────────────────────────────────────────────
  String get questionsTitle => pick(
        'ASK ANYTHING ABOUT YOUR LIFE',
        'PREGUNTA LO QUE QUIERAS',
        'POSEZ TOUTES VOS QUESTIONS',
        'FRAGEN SIE ALLES',
        'PERGUNTE O QUE QUISER',
      );

  String get questionsSubtitle => pick(
        'Choose a category to explore personalized insights',
        'Elige una categoría para explorar insights personalizados',
        'Choisissez une catégorie pour des insights personnalisés',
        'Wählen Sie eine Kategorie für personalisierte Einblicke',
        'Escolha uma categoria para insights personalizados',
      );

  List<CategoryItem> get questionCategories => [
        CategoryItem(
          title: pick('Relationships', 'Relaciones', 'Relations', 'Beziehungen', 'Relacionamentos'),
          description: pick(
            'Explore love, compatibility, and connection insights.',
            'Explora amor, compatibilidad y conexión.',
            'Explorez l\'amour, la compatibilité et les liens.',
            'Erkunden Sie Liebe, Kompatibilität und Verbindung.',
            'Explore amor, compatibilidade e conexão.',
          ),
          icon: 'heart',
          accent: 'pink',
        ),
        CategoryItem(
          title: pick('Career', 'Carrera', 'Carrière', 'Karriere', 'Carreira'),
          description: pick(
            'Discover your ideal career path and professional strengths.',
            'Descubre tu camino profesional ideal.',
            'Découvrez votre parcours professionnel idéal.',
            'Entdecken Sie Ihren idealen Karriereweg.',
            'Descubra seu caminho profissional ideal.',
          ),
          icon: 'briefcase',
          accent: 'blue',
        ),
        CategoryItem(
          title: pick(
            'Success & Wealth',
            'Éxito y riqueza',
            'Succès et richesse',
            'Erfolg & Reichtum',
            'Sucesso e riqueza',
          ),
          description: pick(
            'Unlock financial opportunities and abundance patterns.',
            'Desbloquea oportunidades financieras.',
            'Débloquez les opportunités financières.',
            'Erschließen Sie finanzielle Chancen.',
            'Desbloqueie oportunidades financeiras.',
          ),
          icon: 'trending',
          accent: 'yellow',
        ),
        CategoryItem(
          title: pick(
            'Family & Friends',
            'Familia y amigos',
            'Famille et amis',
            'Familie & Freunde',
            'Família e amigos',
          ),
          description: pick(
            'Understand family dynamics and friendship bonds.',
            'Comprende la dinámica familiar y amistades.',
            'Comprenez la dynamique familiale et les amitiés.',
            'Verstehen Sie Familien- und Freundschaftsbindungen.',
            'Entenda dinâmicas familiares e amizades.',
          ),
          icon: 'users',
          accent: 'green',
        ),
        CategoryItem(
          title: pick(
            'Personal Growth',
            'Crecimiento personal',
            'Développement personnel',
            'Persönliches Wachstum',
            'Crescimento pessoal',
          ),
          description: pick(
            'Identify areas for self-improvement and development.',
            'Identifica áreas de mejora personal.',
            'Identifiez les domaines d\'amélioration personnelle.',
            'Identifizieren Sie Bereiche zur Selbstverbesserung.',
            'Identifique áreas de autoaperfeiçoamento.',
          ),
          icon: 'sprout',
          accent: 'purple',
        ),
        CategoryItem(
          title: pick(
            'Future Opportunities',
            'Oportunidades futuras',
            'Opportunités futures',
            'Zukünftige Chancen',
            'Oportunidades futuras',
          ),
          description: pick(
            'See what opportunities await on your horizon.',
            'Ve qué oportunidades te esperan.',
            'Voyez les opportunités qui vous attendent.',
            'Sehen Sie, welche Chancen auf Sie warten.',
            'Veja quais oportunidades o aguardam.',
          ),
          icon: 'sparkles',
          accent: 'blue',
        ),
      ];

  // ── Success Stories ─────────────────────────────────────────────
  List<StoryItem> get successStories => [
        StoryItem(
          category: pick('Career Growth', 'Crecimiento profesional', 'Évolution carrière', 'Karrierewachstum', 'Crescimento profissional'),
          title: pick('Found My Dream Career', 'Encontré mi carrera ideal', 'Trouvé ma carrière idéale', 'Traumberuf gefunden', 'Encontrei minha carreira'),
          story: pick(
            'After my face reading revealed my natural leadership qualities, I had the confidence to apply for a management position. I got the job!',
            'Mi lectura facial reveló cualidades de liderazgo y conseguí un puesto de gestión.',
            'Ma lecture du visage a révélé mes qualités de leader et j\'ai obtenu un poste de direction.',
            'Meine Gesichtsanalyse zeigte Führungsqualitäten — ich bekam eine Managementstelle.',
            'Minha leitura facial revelou liderança e consegui um cargo de gestão.',
          ),
          icon: 'briefcase',
          accent: 'blue',
        ),
        StoryItem(
          category: pick('Relationship Discovery', 'Descubrimiento relacional', 'Découverte relationnelle', 'Beziehungsentdeckung', 'Descoberta relacional'),
          title: pick('Understanding My Partner', 'Entender a mi pareja', 'Comprendre mon partenaire', 'Partner verstehen', 'Entender meu parceiro'),
          story: pick(
            'The relationship insights from my palm reading helped me understand my partner\'s needs better. Our communication improved tremendously.',
            'Los insights de mi lectura de palma mejoraron nuestra comunicación.',
            'Les insights de ma lecture de paume ont amélioré notre communication.',
            'Die Handlinien-Lesung verbesserte unsere Kommunikation erheblich.',
            'Insights da leitura da palma melhoraram nossa comunicação.',
          ),
          icon: 'heart',
          accent: 'pink',
        ),
        StoryItem(
          category: pick('Hidden Potential', 'Potencial oculto', 'Potentiel caché', 'Verborgenes Potenzial', 'Potencial oculto'),
          title: pick('Unlocked Creative Talents', 'Talentos creativos', 'Talents créatifs', 'Kreative Talente', 'Talentos criativos'),
          story: pick(
            'My handwriting analysis revealed creative abilities I never knew I had. I started painting and now sell my artwork online!',
            'Mi análisis de escritura reveló talentos creativos que no conocía.',
            'Mon analyse d\'écriture a révélé des talents créatifs insoupçonnés.',
            'Meine Handschriftanalyse enthüllte unbekannte kreative Fähigkeiten.',
            'Minha análise de escrita revelou talentos criativos desconhecidos.',
          ),
          icon: 'sparkles',
          accent: 'purple',
        ),
        StoryItem(
          category: pick('Leadership', 'Liderazgo', 'Leadership', 'Führung', 'Liderança'),
          title: pick('Became a Team Leader', 'Líder de equipo', 'Chef d\'équipe', 'Teamleiter geworden', 'Líder de equipe'),
          story: pick(
            'The personality insights showed me I had untapped leadership potential. I volunteered to lead my team project and received a promotion.',
            'Los insights de personalidad me llevaron a liderar mi equipo y ascendí.',
            'Les insights de personnalité m\'ont mené à diriger mon équipe et j\'ai été promu.',
            'Persönlichkeitseinblicke führten zur Teamleitung und Beförderung.',
            'Insights de personalidade me levaram a liderar a equipe e fui promovido.',
          ),
          icon: 'crown',
          accent: 'yellow',
        ),
        StoryItem(
          category: pick('Business Success', 'Éxito empresarial', 'Succès commercial', 'Geschäftserfolg', 'Sucesso nos negócios'),
          title: pick('Launched My Startup', 'Lancé mi startup', 'Lancé ma startup', 'Startup gegründet', 'Lancei minha startup'),
          story: pick(
            'Career guidance from my reading gave me the push I needed to start my own business. We\'re now profitable and growing every month!',
            'La orientación profesional me impulsó a crear mi negocio. ¡Ahora somos rentables!',
            'Les conseils de carrière m\'ont poussé à créer mon entreprise. Nous sommes rentables!',
            'Karriereberatung gab mir den Anstoß für mein eigenes Geschäft. Wir wachsen monatlich!',
            'Orientação de carreira me impulsionou a criar meu negócio. Crescemos todo mês!',
          ),
          icon: 'rocket',
          accent: 'green',
        ),
      ];

  // ── My Readings ───────────────────────────────────────────────
  List<ReadingItem> get myReadings => [
        ReadingItem(
          title: pick('Handwriting Reading', 'Lectura escritura', 'Lecture écriture', 'Schriftlesung', 'Leitura escrita'),
          date: pick('June 15, 2025 • 10:30 AM', '15 jun 2025 • 10:30', '15 juin 2025 • 10:30', '15. Juni 2025 • 10:30', '15 jun 2025 • 10:30'),
          icon: 'handwriting',
          accent: 'purple',
        ),
        ReadingItem(
          title: pick('Face Reading', 'Lectura rostro', 'Lecture visage', 'Gesichtlesung', 'Leitura rosto'),
          date: pick('June 18, 2025 • 2:15 PM', '18 jun 2025 • 14:15', '18 juin 2025 • 14:15', '18. Juni 2025 • 14:15', '18 jun 2025 • 14:15'),
          icon: 'face',
          accent: 'blue',
        ),
        ReadingItem(
          title: pick('Palm Reading', 'Lectura palma', 'Lecture paume', 'Handflächenlesung', 'Leitura palma'),
          date: pick('June 22, 2025 • 9:45 AM', '22 jun 2025 • 9:45', '22 juin 2025 • 9:45', '22. Juni 2025 • 9:45', '22 jun 2025 • 9:45'),
          icon: 'palm',
          accent: 'green',
        ),
        ReadingItem(
          title: pick('Relationship Reading', 'Lectura relaciones', 'Lecture relations', 'Beziehungslesung', 'Leitura relacional'),
          date: pick('June 25, 2025 • 4:20 PM', '25 jun 2025 • 16:20', '25 juin 2025 • 16:20', '25. Juni 2025 • 16:20', '25 jun 2025 • 16:20'),
          icon: 'heart',
          accent: 'pink',
        ),
      ];

  // ── Reading Results ───────────────────────────────────────────
  List<AccordionItem> get readingSections => [
        AccordionItem(
          title: pick('Personality Insights', 'Insights personalidad', 'Insights personnalité', 'Persönlichkeit', 'Insights personalidade'),
          icon: 'person',
          content: pick(
            'You are a naturally intuitive individual with a strong sense of empathy. Your personality blends analytical thinking with creative expression.',
            'Eres intuitivo con gran empatía. Tu personalidad combina análisis y creatividad.',
            'Vous êtes intuitif avec une grande empathie. Votre personnalité mêle analyse et créativité.',
            'Sie sind intuitiv mit starkem Einfühlungsvermögen. Analyse trifft auf Kreativität.',
            'Você é intuitivo com grande empatia. Sua personalidade une análise e criatividade.',
          ),
        ),
        AccordionItem(
          title: pick('Career & Business', 'Carrera y negocios', 'Carrière et business', 'Karriere & Business', 'Carreira e negócios'),
          icon: 'briefcase',
          content: pick(
            'Your professional path points toward leadership and innovation. You excel in creative problem-solving and strategic thinking.',
            'Tu camino profesional apunta al liderazgo e innovación.',
            'Votre parcours professionnel pointe vers le leadership et l\'innovation.',
            'Ihr Berufsweg führt zu Führung und Innovation.',
            'Seu caminho profissional aponta para liderança e inovação.',
          ),
        ),
        AccordionItem(
          title: pick('Relationships', 'Relaciones', 'Relations', 'Beziehungen', 'Relacionamentos'),
          icon: 'heart',
          content: pick(
            'In relationships, you seek depth and genuine connection. Your empathetic nature makes you an attentive partner.',
            'En relaciones buscas profundidad y conexión genuina.',
            'Dans les relations, vous cherchez profondeur et connexion authentique.',
            'In Beziehungen suchen Sie Tiefe und echte Verbindung.',
            'Em relacionamentos, você busca profundidade e conexão genuína.',
          ),
        ),
        AccordionItem(
          title: pick('Strengths & Talents', 'Fortalezas y talentos', 'Forces et talents', 'Stärken & Talente', 'Pontos fortes'),
          icon: 'star',
          content: pick(
            'Key strengths include adaptability, emotional intelligence, and creative vision.',
            'Fortalezas clave: adaptabilidad, inteligencia emocional y visión creativa.',
            'Forces clés : adaptabilité, intelligence émotionnelle et vision créative.',
            'Stärken: Anpassungsfähigkeit, emotionale Intelligenz und kreative Vision.',
            'Pontos fortes: adaptabilidade, inteligência emocional e visão criativa.',
          ),
        ),
        AccordionItem(
          title: pick('Challenges & Weaknesses', 'Desafíos y debilidades', 'Défis et faiblesses', 'Herausforderungen', 'Desafios'),
          icon: 'warning',
          content: pick(
            'Areas for growth include managing perfectionism and learning to delegate.',
            'Áreas de crecimiento: perfeccionismo y delegar tareas.',
            'Domaines de croissance : perfectionnisme et délégation.',
            'Wachstumsbereiche: Perfektionismus und Delegation lernen.',
            'Áreas de crescimento: perfeccionismo e delegar tarefas.',
          ),
        ),
        AccordionItem(
          title: pick('Life Guidance', 'Guía de vida', 'Guide de vie', 'Lebensführung', 'Orientação de vida'),
          icon: 'compass',
          content: pick(
            'Trust your intuition when making important decisions. Focus on building authentic relationships.',
            'Confía en tu intuición al decidir. Enfócate en relaciones auténticas.',
            'Faites confiance à votre intuition. Concentrez-vous sur des relations authentiques.',
            'Vertrauen Sie Ihrer Intuition. Bauen Sie authentische Beziehungen auf.',
            'Confie na sua intuição. Foque em relacionamentos autênticos.',
          ),
        ),
        AccordionItem(
          title: pick('Questions & Answers', 'Preguntas y respuestas', 'Questions et réponses', 'Fragen & Antworten', 'Perguntas e respostas'),
          icon: 'chat',
          highlighted: true,
          badge: '8',
          content: pick(
            'Based on your reading, the best career path involves creative leadership or entrepreneurship.',
            'Según tu lectura, tu mejor camino es liderazgo creativo o emprendimiento.',
            'Selon votre lecture, le meilleur chemin est le leadership créatif ou l\'entrepreneuriat.',
            'Laut Ihrer Lesung: kreative Führung oder Unternehmertum.',
            'Segundo sua leitura, o melhor caminho é liderança criativa ou empreendedorismo.',
          ),
        ),
      ];

  // ── Q&A ───────────────────────────────────────────────────────
  String get qaQuestion => pick(
        'What career path is best for me?',
        '¿Qué camino profesional es mejor para mí?',
        'Quel parcours professionnel me convient le mieux?',
        'Welcher Karriereweg passt am besten zu mir?',
        'Qual caminho de carreira é melhor para mim?',
      );

  String get qaAnswer => pick(
        'Based on your comprehensive reading analysis, your ideal career path lies at the intersection of creativity and leadership. Your natural talents suggest success in roles such as creative director, startup founder, or strategic consultant.',
        'Según tu análisis, tu camino ideal une creatividad y liderazgo: director creativo, fundador de startup o consultor estratégico.',
        'Selon votre analyse, votre parcours idéal unit créativité et leadership : directeur créatif, fondateur de startup ou consultant stratégique.',
        'Ihr idealer Weg verbindet Kreativität und Führung: Kreativdirektor, Startup-Gründer oder Strategieberater.',
        'Seu caminho ideal une criatividade e liderança: diretor criativo, fundador de startup ou consultor estratégico.',
      );

  String get copiedToClipboard => pick(
        'Copied to clipboard',
        'Copiado al portapapeles',
        'Copié dans le presse-papiers',
        'In Zwischenablage kopiert',
        'Copiado para a área de transferência',
      );

  // ── Disclaimer ────────────────────────────────────────────────
  String get disclaimerTitle => 'DISCLAIMER';

  String get disclaimerMain => pick(
        'AI-generated insights for entertainment, self-reflection, and personal development.',
        'Insights generados por IA para entretenimiento, autorreflexión y desarrollo personal.',
        'Insights générés par IA pour le divertissement, l\'introspection et le développement personnel.',
        'KI-generierte Einblicke zur Unterhaltung, Selbstreflexion und persönlichen Entwicklung.',
        'Insights gerados por IA para entretenimento, autorreflexão e desenvolvimento pessoal.',
      );

  String get disclaimerSecondary => pick(
        'Not legal, financial, medical, psychological, or professional advice.',
        'No es asesoramiento legal, financiero, médico, psicológico ni profesional.',
        'Pas un conseil juridique, financier, médical, psychologique ou professionnel.',
        'Keine rechtliche, finanzielle, medizinische oder psychologische Beratung.',
        'Não é aconselhamento legal, financeiro, médico, psicológico ou profissional.',
      );

  String get disclaimerFooter => pick(
        'Results may vary.',
        'Los resultados pueden variar.',
        'Les résultats peuvent varier.',
        'Ergebnisse können variieren.',
        'Os resultados podem variar.',
      );
}
