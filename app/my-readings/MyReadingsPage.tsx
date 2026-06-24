"use client";

import ReadingCard from "@/components/ReadingCard";
import SectionHeader from "@/components/SectionHeader";
import PageTransition from "@/components/PageTransition";
import { myReadings } from "@/lib/mock-data";

export default function MyReadingsPage() {
  return (
    <PageTransition>
      <section className="page-section">
        <div className="mx-auto max-w-3xl">
          <div className="mb-16">
            <SectionHeader
              title="MY READINGS"
              subtitle="Your reading history and past insights"
            />
          </div>

          <div className="space-y-4">
            {myReadings.map((reading, index) => (
              <ReadingCard
                key={reading.title}
                title={reading.title}
                date={reading.date}
                icon={reading.icon}
                accent={reading.accent}
                showButton
                index={index}
              />
            ))}
          </div>
        </div>
      </section>
    </PageTransition>
  );
}
