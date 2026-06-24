"use client";

import QuestionCard from "@/components/QuestionCard";
import SectionHeader from "@/components/SectionHeader";
import PageTransition from "@/components/PageTransition";
import { questionCategories } from "@/lib/mock-data";

export default function QuestionsPage() {
  return (
    <PageTransition>
      <section className="page-section">
        <div className="mx-auto max-w-4xl">
          <div className="mb-16">
            <SectionHeader
              title="ASK ANYTHING ABOUT YOUR LIFE"
              subtitle="Choose a category to explore personalized insights"
            />
          </div>

          <div className="space-y-4">
            {questionCategories.map((category, index) => (
              <QuestionCard key={category.title} {...category} index={index} />
            ))}
          </div>
        </div>
      </section>
    </PageTransition>
  );
}
