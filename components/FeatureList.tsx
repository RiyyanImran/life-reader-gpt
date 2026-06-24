"use client";

import { motion } from "framer-motion";
import { Check } from "lucide-react";

interface FeatureListProps {
  features: string[];
}

export default function FeatureList({ features }: FeatureListProps) {
  return (
    <div className="mx-auto grid max-w-md grid-cols-1 gap-3 sm:max-w-none sm:grid-cols-2 lg:grid-cols-4 lg:gap-4">
      {features.map((feature, index) => (
        <motion.div
          key={feature}
          initial={{ opacity: 0, scale: 0.9 }}
          whileInView={{ opacity: 1, scale: 1 }}
          viewport={{ once: true }}
          transition={{ delay: index * 0.1 }}
          className="flex items-center gap-2.5 rounded-xl border border-border/50 bg-card/30 px-3 py-2.5 sm:border-0 sm:bg-transparent sm:px-0 sm:py-0"
        >
          <div className="flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-accent-green/20">
            <Check className="h-3.5 w-3.5 text-accent-green" aria-hidden="true" />
          </div>
          <span className="text-sm font-medium text-text-secondary sm:text-base">
            {feature}
          </span>
        </motion.div>
      ))}
    </div>
  );
}
