export const navLinks = [
  { href: "/", label: "Home" },
  { href: "/how-it-works", label: "How It Works" },
  { href: "/sample-reading", label: "Sample Reading" },
  { href: "/questions", label: "Questions" },
  { href: "/success-stories", label: "Success Stories" },
  { href: "/disclaimer", label: "Disclaimer" },
  { href: "/my-readings", label: "My Readings" },
] as const;

export const languages = ["English", "Spanish", "French", "German", "Portuguese"] as const;

export const heroCards = [
  {
    title: "Face Reading",
    description:
      "Upload a photo to reveal personality, strengths, and life path.",
    icon: "face" as const,
    accent: "blue" as const,
  },
  {
    title: "Handwriting Reading",
    description: "Analyze handwriting to uncover traits.",
    icon: "handwriting" as const,
    accent: "purple" as const,
  },
  {
    title: "Palm Reading",
    description:
      "Explore destiny and opportunities through the lines and shapes of your palm.",
    icon: "palm" as const,
    accent: "green" as const,
  },
];

export const heroFeatures = [
  "Personality Insights",
  "Relationship Guidance",
  "Career & Business Insights",
  "Strengths & Opportunities",
];

export const timelineSteps = [
  {
    step: 1,
    title: "Choose Reading",
    description: "Select from face, handwriting, or palm reading to begin your journey.",
  },
  {
    step: 2,
    title: "Upload Your Image",
    description: "Securely upload a photo or handwriting sample for AI analysis.",
  },
  {
    step: 3,
    title: "AI Analysis",
    description: "Our advanced AI examines patterns and reveals hidden insights.",
  },
  {
    step: 4,
    title: "Get Free Preview",
    description: "Receive a complimentary preview of your personalized reading.",
  },
  {
    step: 5,
    title: "Unlock Full Reading",
    description: "Access your complete in-depth analysis for just $5.",
  },
  {
    step: 6,
    title: "Ask Questions",
    description: "Get answers to specific life questions based on your reading.",
  },
];

export const sampleReadings = [
  {
    title: "Face Reading Sample",
    accent: "blue" as const,
    icon: "face" as const,
    sample:
      "Your facial structure reveals a natural leader with strong intuitive abilities. The symmetry of your features suggests balance in decision-making, while your expressive eyes indicate deep empathy and emotional intelligence. You possess an innate ability to inspire others and navigate complex social situations with grace.",
  },
  {
    title: "Handwriting Sample",
    accent: "purple" as const,
    icon: "handwriting" as const,
    sample:
      "Your handwriting shows remarkable creativity and determination. The fluid strokes indicate an adaptable mind, while consistent letter spacing reveals attention to detail. Your writing suggests someone who values authenticity and isn't afraid to take calculated risks in pursuit of their goals.",
  },
  {
    title: "Palm Reading Sample",
    accent: "green" as const,
    icon: "palm" as const,
    sample:
      "Your palm lines indicate a life path rich with opportunity. A strong life line suggests vitality and resilience, while your heart line reveals deep capacity for love and meaningful connections. The fate line points toward significant career achievements in your near future.",
  },
];

export const questionCategories = [
  {
    title: "Relationships",
    description: "Explore love, compatibility, and connection insights.",
    icon: "heart" as const,
    accent: "pink" as const,
  },
  {
    title: "Career",
    description: "Discover your ideal career path and professional strengths.",
    icon: "briefcase" as const,
    accent: "blue" as const,
  },
  {
    title: "Success & Wealth",
    description: "Unlock financial opportunities and abundance patterns.",
    icon: "trending" as const,
    accent: "yellow" as const,
  },
  {
    title: "Family & Friends",
    description: "Understand family dynamics and friendship bonds.",
    icon: "users" as const,
    accent: "green" as const,
  },
  {
    title: "Personal Growth",
    description: "Identify areas for self-improvement and development.",
    icon: "sprout" as const,
    accent: "purple" as const,
  },
  {
    title: "Future Opportunities",
    description: "See what opportunities await on your horizon.",
    icon: "sparkles" as const,
    accent: "blue" as const,
  },
];

export const successStories = [
  {
    category: "Career Growth",
    title: "Found My Dream Career",
    story:
      "After my face reading revealed my natural leadership qualities, I had the confidence to apply for a management position. I got the job and haven't looked back since!",
    icon: "briefcase" as const,
    accent: "blue" as const,
  },
  {
    category: "Relationship Discovery",
    title: "Understanding My Partner",
    story:
      "The relationship insights from my palm reading helped me understand my partner's needs better. Our communication has improved tremendously.",
    icon: "heart" as const,
    accent: "pink" as const,
  },
  {
    category: "Hidden Potential",
    title: "Unlocked Creative Talents",
    story:
      "My handwriting analysis revealed creative abilities I never knew I had. I started painting and now sell my artwork online!",
    icon: "sparkles" as const,
    accent: "purple" as const,
  },
  {
    category: "Leadership",
    title: "Became a Team Leader",
    story:
      "The personality insights showed me I had untapped leadership potential. I volunteered to lead my team project and received a promotion within months.",
    icon: "crown" as const,
    accent: "yellow" as const,
  },
  {
    category: "Business Success",
    title: "Launched My Startup",
    story:
      "Career guidance from my reading gave me the push I needed to start my own business. We're now profitable and growing every month!",
    icon: "rocket" as const,
    accent: "green" as const,
  },
];

export const myReadings = [
  {
    title: "Handwriting Reading",
    date: "June 15, 2025",
    icon: "handwriting" as const,
    accent: "purple" as const,
  },
  {
    title: "Face Reading",
    date: "June 18, 2025",
    icon: "face" as const,
    accent: "blue" as const,
  },
  {
    title: "Palm Reading",
    date: "June 22, 2025",
    icon: "palm" as const,
    accent: "green" as const,
  },
  {
    title: "Relationship Reading",
    date: "June 25, 2025",
    icon: "heart" as const,
    accent: "pink" as const,
  },
];

export const readingSections = [
  {
    title: "Personality Insights",
    content:
      "You are a naturally intuitive individual with a strong sense of empathy. Your personality blends analytical thinking with creative expression, making you well-suited for roles that require both logic and imagination. You value authenticity and are drawn to meaningful connections over superficial interactions.",
  },
  {
    title: "Career & Business",
    content:
      "Your professional path points toward leadership and innovation. You excel in environments that allow creative problem-solving and strategic thinking. Consider roles in management, entrepreneurship, or creative industries. Financial opportunities may arise through networking and leveraging your natural charisma.",
  },
  {
    title: "Relationships",
    content:
      "In relationships, you seek depth and genuine connection. Your empathetic nature makes you an attentive partner, though you may need to set boundaries to avoid emotional exhaustion. Compatible partners appreciate your warmth and intellectual curiosity.",
  },
  {
    title: "Strengths & Talents",
    content:
      "Key strengths include adaptability, emotional intelligence, and creative vision. You have a talent for seeing patterns others miss and communicating complex ideas clearly. Your natural leadership abilities emerge when you trust your instincts.",
  },
  {
    title: "Challenges & Weaknesses",
    content:
      "Areas for growth include managing perfectionism and learning to delegate. You may sometimes overthink decisions or take on too much responsibility. Practicing self-care and setting realistic expectations will help you thrive.",
  },
  {
    title: "Life Guidance",
    content:
      "Trust your intuition when making important decisions. Focus on building authentic relationships and pursuing work that aligns with your values. The next 6-12 months present opportunities for significant personal and professional growth.",
  },
  {
    title: "Questions & Answers",
    content:
      "Based on your reading, the best career path involves creative leadership or entrepreneurship. Your relationship outlook is positive, with deeper connections forming in the coming months. Focus on developing your communication skills to maximize upcoming opportunities.",
  },
];

export const qaSample = {
  question: "What career path is best for me?",
  answer:
    "Based on your comprehensive reading analysis, your ideal career path lies at the intersection of creativity and leadership. Your natural talents suggest success in roles such as creative director, startup founder, or strategic consultant. Your analytical mind combined with emotional intelligence makes you particularly suited for industries that value innovation — technology, design, marketing, or education. The next 12 months present an excellent window for career transitions or launching new ventures. Focus on roles that allow autonomy and creative expression while leveraging your ability to inspire and guide others.",
};
