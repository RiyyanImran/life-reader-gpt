"use client";

import { motion } from "framer-motion";
import HeroCard from "@/components/HeroCard";
import FeatureList from "@/components/FeatureList";
import PrivacyNotice from "@/components/PrivacyNotice";
import CTAButton from "@/components/CTAButton";
import PageTransition from "@/components/PageTransition";
import { heroCards, heroFeatures } from "@/lib/mock-data";

export default function HomePage() {
  return (
    <PageTransition>
      <section className="page-section relative overflow-hidden">
        <div className="mx-auto max-w-7xl">
          <motion.div
            initial={{ opacity: 0, y: 40 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.6 }}
            className="mb-8 text-center sm:mb-12 lg:mb-16"
          >
            <h1 className="text-balance text-3xl font-bold leading-tight tracking-tight text-white sm:text-4xl md:text-5xl lg:text-6xl xl:text-7xl">
              <span className="block">TRY YOUR</span>
              <span className="block gradient-text">FREE</span>
              <span className="block">LIFE READER SAMPLE</span>
            </h1>
            <p className="mx-auto mt-4 max-w-2xl text-base text-text-secondary sm:mt-6 sm:text-lg md:text-xl">
              Discover hidden insights from your:
            </p>
          </motion.div>

          <div className="mb-8 grid grid-cols-1 items-stretch gap-4 sm:mb-12 sm:gap-6 md:grid-cols-3">
            {heroCards.map((card, index) => (
              <HeroCard key={card.title} {...card} index={index} />
            ))}
          </div>

          <div className="mb-8 sm:mb-12 lg:mb-16">
            <FeatureList features={heroFeatures} />
          </div>

          <div className="mx-auto mb-8 max-w-2xl sm:mb-12">
            <PrivacyNotice />
          </div>

          <motion.div
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            className="flex justify-center px-2"
          >
            <CTAButton href="/sample-reading" size="lg" fullWidth>
              Start Free Reading
            </CTAButton>
          </motion.div>
        </div>

        <div
          className="pointer-events-none absolute left-1/2 top-1/4 h-64 w-64 -translate-x-1/2 rounded-full bg-primary/10 blur-3xl sm:h-96 sm:w-96"
          aria-hidden="true"
        />
      </section>
    </PageTransition>
  );
}
