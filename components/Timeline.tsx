"use client";

import { motion } from "framer-motion";
import GlassCard from "./GlassCard";

interface TimelineStep {
  step: number;
  title: string;
  description: string;
}

interface TimelineProps {
  steps: TimelineStep[];
}

export default function Timeline({ steps }: TimelineProps) {
  return (
    <div className="relative mx-auto max-w-2xl px-1">
      <div
        className="absolute left-5 top-0 h-full w-0.5 bg-gradient-to-b from-primary via-primary-secondary to-accent-blue sm:left-6 md:left-1/2 md:-translate-x-1/2"
        aria-hidden="true"
      />

      {steps.map((step, index) => (
        <motion.div
          key={step.step}
          className="relative mb-10 pl-14 sm:mb-12 sm:pl-16 md:mb-16 md:pl-0"
          initial={{ opacity: 0, x: -20 }}
          whileInView={{ opacity: 1, x: 0 }}
          viewport={{ once: true, margin: "-50px" }}
          transition={{ duration: 0.5, delay: index * 0.1 }}
        >
          <motion.div
            className="absolute left-0 top-0 z-10 flex h-10 w-10 items-center justify-center rounded-full border-2 border-primary bg-card text-sm font-bold text-primary shadow-glow sm:h-12 sm:w-12 sm:text-base md:left-1/2 md:-translate-x-1/2"
            animate={{
              boxShadow: [
                "0 0 15px rgba(139, 92, 246, 0.3)",
                "0 0 30px rgba(139, 92, 246, 0.6)",
                "0 0 15px rgba(139, 92, 246, 0.3)",
              ],
            }}
            transition={{ duration: 2, repeat: Infinity }}
          >
            {step.step}
          </motion.div>

          <div
            className={`md:w-[calc(50%-2.5rem)] lg:w-[calc(50%-3rem)] ${
              index % 2 === 0
                ? "md:mr-auto md:pr-8 md:text-right lg:pr-12"
                : "md:ml-auto md:pl-8 md:text-left lg:pl-12"
            }`}
          >
            <GlassCard hover={false} className="w-full text-left">
              <h3 className="mb-1.5 text-base font-bold text-white sm:mb-2 sm:text-lg">
                {step.title}
              </h3>
              <p className="text-sm leading-relaxed text-text-secondary">
                {step.description}
              </p>
            </GlassCard>
          </div>
        </motion.div>
      ))}
    </div>
  );
}
