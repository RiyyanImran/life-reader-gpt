class NavItem {
  const NavItem({required this.path, required this.label});
  final String path;
  final String label;
}

class HeroCardData {
  const HeroCardData({
    required this.title,
    required this.description,
    required this.icon,
    required this.accent,
  });
  final String title;
  final String description;
  final String icon;
  final String accent;
}

class TimelineStep {
  const TimelineStep({
    required this.step,
    required this.title,
    required this.description,
  });
  final int step;
  final String title;
  final String description;
}

class ReadingItem {
  const ReadingItem({
    required this.title,
    this.sample,
    this.date,
    required this.icon,
    required this.accent,
  });
  final String title;
  final String? sample;
  final String? date;
  final String icon;
  final String accent;
}

class CategoryItem {
  const CategoryItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.accent,
  });
  final String title;
  final String description;
  final String icon;
  final String accent;
}

class StoryItem {
  const StoryItem({
    required this.category,
    required this.title,
    required this.story,
    required this.icon,
    required this.accent,
  });
  final String category;
  final String title;
  final String story;
  final String icon;
  final String accent;
}

class AccordionItem {
  const AccordionItem({
    required this.title,
    required this.content,
    this.icon = 'sparkles',
    this.highlighted = false,
    this.badge,
  });
  final String title;
  final String content;
  final String icon;
  final bool highlighted;
  final String? badge;
}

const navItems = [
  NavItem(path: '/', label: 'Home'),
  NavItem(path: '/how-it-works', label: 'How It Works'),
  NavItem(path: '/sample-reading', label: 'Sample Reading'),
  NavItem(path: '/questions', label: 'Questions'),
  NavItem(path: '/success-stories', label: 'Success Stories'),
  NavItem(path: '/disclaimer', label: 'Disclaimer'),
  NavItem(path: '/my-readings', label: 'My Readings'),
];

const languages = ['English', 'Spanish', 'French', 'German', 'Portuguese'];

const heroCards = [
  HeroCardData(
    title: 'Face Reading',
    description:
        'Upload a photo to reveal personality, strengths, and life path.',
    icon: 'face',
    accent: 'blue',
  ),
  HeroCardData(
    title: 'Handwriting Reading',
    description: 'Analyze handwriting to uncover traits.',
    icon: 'handwriting',
    accent: 'purple',
  ),
  HeroCardData(
    title: 'Palm Reading',
    description:
        'Explore destiny and opportunities through the lines and shapes of your palm.',
    icon: 'palm',
    accent: 'green',
  ),
];

const heroFeatures = [
  'Personality Insights',
  'Relationship Guidance',
  'Career & Business Insights',
  'Strengths & Opportunities',
];

const timelineSteps = [
  TimelineStep(
    step: 1,
    title: 'Choose Reading',
    description:
        'Select from face, handwriting, or palm reading to begin your journey.',
  ),
  TimelineStep(
    step: 2,
    title: 'Upload Your Image',
    description:
        'Securely upload a photo or handwriting sample for AI analysis.',
  ),
  TimelineStep(
    step: 3,
    title: 'AI Analysis',
    description:
        'Our advanced AI examines patterns and reveals hidden insights.',
  ),
  TimelineStep(
    step: 4,
    title: 'Get Free Preview',
    description:
        'Receive a complimentary preview of your personalized reading.',
  ),
  TimelineStep(
    step: 5,
    title: 'Unlock Full Reading',
    description: 'Access your complete in-depth analysis for just \$5.',
  ),
  TimelineStep(
    step: 6,
    title: 'Ask Questions',
    description:
        'Get answers to specific life questions based on your reading.',
  ),
];

const sampleReadings = [
  ReadingItem(
    title: 'Face Reading Sample',
    accent: 'blue',
    icon: 'face',
    sample:
        'Your facial structure reveals a natural leader with strong intuitive abilities. The symmetry of your features suggests balance in decision-making, while your expressive eyes indicate deep empathy and emotional intelligence.',
  ),
  ReadingItem(
    title: 'Handwriting Sample',
    accent: 'purple',
    icon: 'handwriting',
    sample:
        'Your handwriting shows remarkable creativity and determination. The fluid strokes indicate an adaptable mind, while consistent letter spacing reveals attention to detail.',
  ),
  ReadingItem(
    title: 'Palm Reading Sample',
    accent: 'green',
    icon: 'palm',
    sample:
        'Your palm lines indicate a life path rich with opportunity. A strong life line suggests vitality and resilience, while your heart line reveals deep capacity for love.',
  ),
];

const questionCategories = [
  CategoryItem(
    title: 'Relationships',
    description: 'Explore love, compatibility, and connection insights.',
    icon: 'heart',
    accent: 'pink',
  ),
  CategoryItem(
    title: 'Career',
    description: 'Discover your ideal career path and professional strengths.',
    icon: 'briefcase',
    accent: 'blue',
  ),
  CategoryItem(
    title: 'Success & Wealth',
    description: 'Unlock financial opportunities and abundance patterns.',
    icon: 'trending',
    accent: 'yellow',
  ),
  CategoryItem(
    title: 'Family & Friends',
    description: 'Understand family dynamics and friendship bonds.',
    icon: 'users',
    accent: 'green',
  ),
  CategoryItem(
    title: 'Personal Growth',
    description: 'Identify areas for self-improvement and development.',
    icon: 'sprout',
    accent: 'purple',
  ),
  CategoryItem(
    title: 'Future Opportunities',
    description: 'See what opportunities await on your horizon.',
    icon: 'sparkles',
    accent: 'blue',
  ),
];

const successStories = [
  StoryItem(
    category: 'Career Growth',
    title: 'Found My Dream Career',
    story:
        'After my face reading revealed my natural leadership qualities, I had the confidence to apply for a management position. I got the job and haven\'t looked back since!',
    icon: 'briefcase',
    accent: 'blue',
  ),
  StoryItem(
    category: 'Relationship Discovery',
    title: 'Understanding My Partner',
    story:
        'The relationship insights from my palm reading helped me understand my partner\'s needs better. Our communication has improved tremendously.',
    icon: 'heart',
    accent: 'pink',
  ),
  StoryItem(
    category: 'Hidden Potential',
    title: 'Unlocked Creative Talents',
    story:
        'My handwriting analysis revealed creative abilities I never knew I had. I started painting and now sell my artwork online!',
    icon: 'sparkles',
    accent: 'purple',
  ),
  StoryItem(
    category: 'Leadership',
    title: 'Became a Team Leader',
    story:
        'The personality insights showed me I had untapped leadership potential. I volunteered to lead my team project and received a promotion within months.',
    icon: 'crown',
    accent: 'yellow',
  ),
  StoryItem(
    category: 'Business Success',
    title: 'Launched My Startup',
    story:
        'Career guidance from my reading gave me the push I needed to start my own business. We\'re now profitable and growing every month!',
    icon: 'rocket',
    accent: 'green',
  ),
];

const myReadings = [
  ReadingItem(
    title: 'Handwriting Reading',
    date: 'June 15, 2025 • 10:30 AM',
    icon: 'handwriting',
    accent: 'purple',
  ),
  ReadingItem(
    title: 'Face Reading',
    date: 'June 18, 2025 • 2:15 PM',
    icon: 'face',
    accent: 'blue',
  ),
  ReadingItem(
    title: 'Palm Reading',
    date: 'June 22, 2025 • 9:45 AM',
    icon: 'palm',
    accent: 'green',
  ),
  ReadingItem(
    title: 'Relationship Reading',
    date: 'June 25, 2025 • 4:20 PM',
    icon: 'heart',
    accent: 'pink',
  ),
];

const readingSections = [
  AccordionItem(
    title: 'Personality Insights',
    icon: 'person',
    content:
        'You are a naturally intuitive individual with a strong sense of empathy. Your personality blends analytical thinking with creative expression.',
  ),
  AccordionItem(
    title: 'Career & Business',
    icon: 'briefcase',
    content:
        'Your professional path points toward leadership and innovation. You excel in environments that allow creative problem-solving and strategic thinking.',
  ),
  AccordionItem(
    title: 'Relationships',
    icon: 'heart',
    content:
        'In relationships, you seek depth and genuine connection. Your empathetic nature makes you an attentive partner.',
  ),
  AccordionItem(
    title: 'Strengths & Talents',
    icon: 'star',
    content:
        'Key strengths include adaptability, emotional intelligence, and creative vision.',
  ),
  AccordionItem(
    title: 'Challenges & Weaknesses',
    icon: 'warning',
    content:
        'Areas for growth include managing perfectionism and learning to delegate.',
  ),
  AccordionItem(
    title: 'Life Guidance',
    icon: 'compass',
    content:
        'Trust your intuition when making important decisions. Focus on building authentic relationships.',
  ),
  AccordionItem(
    title: 'Questions & Answers',
    icon: 'chat',
    highlighted: true,
    badge: '8',
    content:
        'Based on your reading, the best career path involves creative leadership or entrepreneurship.',
  ),
];

const qaQuestion = 'What career path is best for me?';
const qaAnswer =
    'Based on your comprehensive reading analysis, your ideal career path lies at the intersection of creativity and leadership. Your natural talents suggest success in roles such as creative director, startup founder, or strategic consultant.';
