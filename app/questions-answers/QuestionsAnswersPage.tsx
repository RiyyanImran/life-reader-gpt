"use client";

import { motion } from "framer-motion";
import { User, Bot } from "lucide-react";
import GlassCard from "@/components/GlassCard";
import CTAButton from "@/components/CTAButton";
import SectionHeader from "@/components/SectionHeader";
import PageTransition from "@/components/PageTransition";
import { qaSample } from "@/lib/mock-data";

export default function QuestionsAnswersPage() {
  return (
    <PageTransition>
      <section className="page-section">
        <div className="mx-auto max-w-3xl">
          <div className="mb-12">
            <SectionHeader
              title="QUESTIONS & ANSWERS"
              subtitle="Your personalized AI conversation"
            />
          </div>

          <div className="space-y-6">
            {/* User Question */}
            <motion.div
              initial={{ opacity: 0, x: -20 }}
              animate={{ opacity: 1, x: 0 }}
              transition={{ duration: 0.4 }}
              className="flex justify-end gap-3"
            >
              <div className="w-full max-w-[92%] sm:max-w-[85%]">
                <div className="mb-2 flex items-center justify-end gap-2">
                  <span className="text-xs font-medium text-text-secondary">
                    You
                  </span>
                  <div className="flex h-8 w-8 items-center justify-center rounded-full border border-border bg-card">
                    <User className="h-4 w-4 text-primary" aria-hidden="true" />
                  </div>
                </div>
                <div className="rounded-card rounded-tr-sm border border-primary/30 bg-primary/10 px-5 py-4">
                  <p className="text-sm font-medium text-white md:text-base">
                    {qaSample.question}
                  </p>
                </div>
              </div>
            </motion.div>

            {/* AI Answer */}
            <motion.div
              initial={{ opacity: 0, x: 20 }}
              animate={{ opacity: 1, x: 0 }}
              transition={{ duration: 0.4, delay: 0.2 }}
              className="flex gap-3"
            >
              <div className="w-full max-w-[95%] sm:max-w-[90%]">
                <div className="mb-2 flex items-center gap-2">
                  <div className="flex h-8 w-8 items-center justify-center rounded-full border border-accent-blue/30 bg-accent-blue/10 shadow-glow-blue">
                    <Bot
                      className="h-4 w-4 text-accent-blue"
                      aria-hidden="true"
                    />
                  </div>
                  <span className="text-xs font-medium text-text-secondary">
                    LifeReaderGPT
                  </span>
                </div>
                <GlassCard hover={false} className="rounded-tl-sm shadow-glow">
                  <p className="text-sm leading-relaxed text-text-secondary md:text-base">
                    {qaSample.answer}
                  </p>
                </GlassCard>
              </div>
            </motion.div>
          </div>

          <motion.div
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            className="mt-12 flex flex-col gap-3 sm:flex-row sm:justify-center"
          >
            <CTAButton href="/questions" fullWidth>
              Ask Another Question
            </CTAButton>
            <CTAButton href="/my-readings" variant="secondary" fullWidth>
              View All Readings
            </CTAButton>
          </motion.div>
        </div>
      </section>
    </PageTransition>
  );
}
