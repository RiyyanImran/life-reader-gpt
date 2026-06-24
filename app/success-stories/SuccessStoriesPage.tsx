"use client";

import TestimonialCard from "@/components/TestimonialCard";
import SectionHeader from "@/components/SectionHeader";
import PageTransition from "@/components/PageTransition";
import { successStories } from "@/lib/mock-data";

export default function SuccessStoriesPage() {
  return (
    <PageTransition>
      <section className="page-section">
        <div className="mx-auto max-w-6xl">
          <div className="mb-16">
            <SectionHeader
              title="SUCCESS STORIES"
              subtitle="Real people, real transformations powered by AI insights"
            />
          </div>

          <div className="grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
            {successStories.map((story, index) => (
              <TestimonialCard key={story.title} {...story} index={index} />
            ))}
          </div>
        </div>
      </section>
    </PageTransition>
  );
}
