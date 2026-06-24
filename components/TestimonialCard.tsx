"use client";

import { motion } from "framer-motion";
import {
  Heart,
  Briefcase,
  TrendingUp,
  Sparkles,
  Crown,
  Rocket,
  LucideIcon,
} from "lucide-react";
import GlassCard from "./GlassCard";
import { cn } from "@/lib/utils";

type Accent = "blue" | "purple" | "green" | "pink" | "yellow";
type IconType =
  | "heart"
  | "briefcase"
  | "trending"
  | "sparkles"
  | "crown"
  | "rocket";

interface TestimonialCardProps {
  category: string;
  title: string;
  story: string;
  icon: IconType;
  accent: Accent;
  index?: number;
}

const iconMap: Record<IconType, LucideIcon> = {
  heart: Heart,
  briefcase: Briefcase,
  trending: TrendingUp,
  sparkles: Sparkles,
  crown: Crown,
  rocket: Rocket,
};

const accentStyles: Record<Accent, { icon: string; badge: string }> = {
  blue: { icon: "text-accent-blue", badge: "bg-accent-blue/10 text-accent-blue border-accent-blue/30" },
  purple: { icon: "text-primary", badge: "bg-primary/10 text-primary border-primary/30" },
  green: { icon: "text-accent-green", badge: "bg-accent-green/10 text-accent-green border-accent-green/30" },
  pink: { icon: "text-accent-pink", badge: "bg-accent-pink/10 text-accent-pink border-accent-pink/30" },
  yellow: { icon: "text-accent-yellow", badge: "bg-accent-yellow/10 text-accent-yellow border-accent-yellow/30" },
};

export default function TestimonialCard({
  category,
  title,
  story,
  icon,
  accent,
  index = 0,
}: TestimonialCardProps) {
  const Icon = iconMap[icon];
  const styles = accentStyles[accent];

  return (
    <motion.div
      initial={{ opacity: 0, y: 40 }}
      whileInView={{ opacity: 1, y: 0 }}
      viewport={{ once: true }}
      transition={{ duration: 0.5, delay: index * 0.1 }}
    >
      <GlassCard>
        <div className="mb-4 flex flex-wrap items-start justify-between gap-2 sm:mb-4 sm:gap-4">
          <div
            className={cn(
              "flex h-12 w-12 shrink-0 items-center justify-center rounded-xl",
              "border border-border bg-background/50"
            )}
          >
            <Icon className={cn("h-6 w-6", styles.icon)} aria-hidden="true" />
          </div>
          <span
            className={cn(
              "shrink-0 rounded-full border px-2.5 py-1 text-[10px] font-medium sm:px-3 sm:text-xs",
              styles.badge
            )}
          >
            {category}
          </span>
        </div>
        <h3 className="mb-3 text-lg font-bold text-white">{title}</h3>
        <p className="text-sm leading-relaxed text-text-secondary italic">
          &ldquo;{story}&rdquo;
        </p>
      </GlassCard>
    </motion.div>
  );
}
