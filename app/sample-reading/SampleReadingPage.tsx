"use client";

import { motion } from "framer-motion";
import ReadingCard from "@/components/ReadingCard";
import CTAButton from "@/components/CTAButton";
import SectionHeader from "@/components/SectionHeader";
import PageTransition from "@/components/PageTransition";
import { sampleReadings } from "@/lib/mock-data";

export default function SampleReadingPage() {
  return (
    <PageTransition>
      <section className="page-section">
        <div className="mx-auto max-w-4xl">
          <div className="mb-16">
            <SectionHeader
              title="SAMPLE READINGS"
              subtitle="Preview what your personalized AI reading looks like"
            />
          </div>

          <div className="mb-16 space-y-6">
            {sampleReadings.map((reading, index) => (
              <ReadingCard
                key={reading.title}
                title={reading.title}
                sample={reading.sample}
                icon={reading.icon}
                accent={reading.accent}
                showArrow
                index={index}
              />
            ))}
          </div>

          <motion.div
            initial={{ opacity: 0, y: 30 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            className="text-center"
          >
            <div className="glass-card neon-border mx-auto max-w-lg rounded-card p-5 sm:p-8">
              <h2 className="mb-2 text-xl font-bold text-white sm:text-2xl md:text-3xl">
                Unlock Your Full Reading
              </h2>
              <p className="mb-5 text-3xl font-bold gradient-text sm:mb-6 sm:text-4xl">
                Only $5
              </p>
              <CTAButton href="/reading-results" size="lg" fullWidth>
                Get Full Reading
              </CTAButton>
            </div>
          </motion.div>
        </div>
      </section>
    </PageTransition>
  );
}
