"use client";

import SectionHeader from "@/components/SectionHeader";
import Timeline from "@/components/Timeline";
import PrivacyNotice from "@/components/PrivacyNotice";
import PageTransition from "@/components/PageTransition";
import { timelineSteps } from "@/lib/mock-data";

export default function HowItWorksPage() {
  return (
    <PageTransition>
      <section className="page-section">
        <div className="mx-auto max-w-7xl">
          <div className="mb-16">
            <SectionHeader
              title="HOW IT WORKS"
              subtitle="Your journey to self-discovery in six simple steps"
            />
          </div>

          <Timeline steps={timelineSteps} />

          <div className="mx-auto mt-16 max-w-2xl">
            <PrivacyNotice title="Your Data Is Safe With Us" />
          </div>
        </div>
      </section>
    </PageTransition>
  );
}
