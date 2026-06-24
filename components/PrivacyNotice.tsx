"use client";

import { motion } from "framer-motion";
import { Shield } from "lucide-react";
import GlassCard from "./GlassCard";

interface PrivacyNoticeProps {
  title?: string;
  className?: string;
}

export default function PrivacyNotice({
  title = "Your Privacy Is Our Priority",
  className,
}: PrivacyNoticeProps) {
  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      whileInView={{ opacity: 1, y: 0 }}
      viewport={{ once: true }}
      className={className}
    >
      <GlassCard
        hover={false}
        className="flex flex-col items-center gap-4 text-center sm:flex-row sm:items-start sm:text-left"
      >
        <div className="flex h-14 w-14 shrink-0 items-center justify-center rounded-2xl border border-accent-green/30 bg-accent-green/10 shadow-glow-green">
          <Shield className="h-7 w-7 text-accent-green" aria-hidden="true" />
        </div>
        <div>
          <h3 className="text-base font-bold text-white sm:text-lg">{title}</h3>
          <p className="mt-1 text-sm leading-relaxed text-text-secondary">
            Your images and data are encrypted and never shared with third
            parties. We respect your privacy at every step.
          </p>
        </div>
      </GlassCard>
    </motion.div>
  );
}
