"use client";

import { motion } from "framer-motion";
import { AlertTriangle } from "lucide-react";
import GlassCard from "@/components/GlassCard";
import SectionHeader from "@/components/SectionHeader";
import PageTransition from "@/components/PageTransition";

export default function DisclaimerPage() {
  return (
    <PageTransition>
      <section className="page-section">
        <div className="mx-auto max-w-3xl">
          <div className="mb-12">
            <SectionHeader title="DISCLAIMER" />
          </div>

          <motion.div
            initial={{ opacity: 0, y: 30 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
          >
            <GlassCard hover={false} className="p-8 md:p-12">
              <div className="mb-8 flex justify-center">
                <div className="flex h-16 w-16 items-center justify-center rounded-2xl border border-accent-yellow/30 bg-accent-yellow/10">
                  <AlertTriangle
                    className="h-8 w-8 text-accent-yellow"
                    aria-hidden="true"
                  />
                </div>
              </div>

              <div className="space-y-6 text-center">
                <p className="text-lg leading-relaxed text-white md:text-xl">
                  AI-generated insights for entertainment, self-reflection, and
                  personal development.
                </p>

                <div className="mx-auto h-px w-24 bg-gradient-to-r from-transparent via-primary/50 to-transparent" />

                <p className="text-base leading-relaxed text-text-secondary md:text-lg">
                  Not legal, financial, medical, psychological, or professional
                  advice.
                </p>

                <p className="text-sm font-medium text-text-secondary">
                  Results may vary.
                </p>
              </div>
            </GlassCard>
          </motion.div>
        </div>
      </section>
    </PageTransition>
  );
}
