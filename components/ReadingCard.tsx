"use client";

import { motion } from "framer-motion";
import {
  ScanFace,
  PenLine,
  Hand,
  Heart,
  ArrowRight,
  LucideIcon,
} from "lucide-react";
import GlassCard from "./GlassCard";
import { cn } from "@/lib/utils";

type Accent = "blue" | "purple" | "green" | "pink";
type IconType = "face" | "handwriting" | "palm" | "heart";

interface ReadingCardProps {
  title: string;
  description?: string;
  sample?: string;
  date?: string;
  icon: IconType;
  accent: Accent;
  showArrow?: boolean;
  showButton?: boolean;
  buttonText?: string;
  index?: number;
}

const iconMap: Record<IconType, LucideIcon> = {
  face: ScanFace,
  handwriting: PenLine,
  palm: Hand,
  heart: Heart,
};

const accentStyles: Record<Accent, { icon: string; glow: string }> = {
  blue: { icon: "text-accent-blue", glow: "blue" },
  purple: { icon: "text-primary", glow: "purple" },
  green: { icon: "text-accent-green", glow: "green" },
  pink: { icon: "text-accent-pink", glow: "pink" },
};

export default function ReadingCard({
  title,
  description,
  sample,
  date,
  icon,
  accent,
  showArrow = false,
  showButton = false,
  buttonText = "View Reading",
  index = 0,
}: ReadingCardProps) {
  const Icon = iconMap[icon];
  const styles = accentStyles[accent];

  return (
    <motion.div
      initial={{ opacity: 0, y: 30 }}
      whileInView={{ opacity: 1, y: 0 }}
      viewport={{ once: true }}
      transition={{ duration: 0.5, delay: index * 0.1 }}
    >
      <GlassCard glow={styles.glow as "blue" | "purple" | "green" | "pink"}>
        <div
          className={cn(
            "flex gap-3 sm:gap-4",
            showArrow ? "items-start justify-between" : "items-start"
          )}
        >
          <div className="flex min-w-0 flex-1 items-start gap-3 sm:gap-4">
            <div
              className={cn(
                "flex h-11 w-11 shrink-0 items-center justify-center rounded-xl sm:h-12 sm:w-12",
                "border border-border bg-background/50"
              )}
            >
              <Icon
                className={cn("h-5 w-5 sm:h-6 sm:w-6", styles.icon)}
                aria-hidden="true"
              />
            </div>
            <div className="min-w-0 flex-1">
              <h3 className="mb-1 text-base font-bold text-white sm:text-lg">
                {title}
              </h3>
              {date && (
                <p className="mb-2 text-sm text-text-secondary">{date}</p>
              )}
              {description && (
                <p className="text-sm text-text-secondary">{description}</p>
              )}
              {sample && (
                <p className="mt-2 text-sm leading-relaxed text-text-secondary sm:mt-3">
                  {sample}
                </p>
              )}
            </div>
          </div>
          {showArrow && (
            <motion.div
              className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full border border-primary/30 bg-primary/10"
              whileTap={{ scale: 0.95 }}
            >
              <ArrowRight className="h-5 w-5 text-primary" aria-hidden="true" />
            </motion.div>
          )}
        </div>
        {showButton && (
          <motion.button
            className="mt-4 w-full min-h-[44px] rounded-xl border border-primary/30 bg-primary/10 py-2.5 text-sm font-semibold text-primary transition-all active:bg-primary/20 sm:hover:bg-primary/20 sm:hover:shadow-glow"
            whileTap={{ scale: 0.98 }}
          >
            {buttonText}
          </motion.button>
        )}
      </GlassCard>
    </motion.div>
  );
}
