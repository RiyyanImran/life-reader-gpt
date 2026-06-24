"use client";

import { motion } from "framer-motion";
import {
  Heart,
  Briefcase,
  TrendingUp,
  Users,
  Sprout,
  Sparkles,
  ArrowRight,
  LucideIcon,
} from "lucide-react";
import GlassCard from "./GlassCard";
import { cn } from "@/lib/utils";

type Accent = "blue" | "purple" | "green" | "pink" | "yellow";
type IconType =
  | "heart"
  | "briefcase"
  | "trending"
  | "users"
  | "sprout"
  | "sparkles";

interface QuestionCardProps {
  title: string;
  description: string;
  icon: IconType;
  accent: Accent;
  index?: number;
}

const iconMap: Record<IconType, LucideIcon> = {
  heart: Heart,
  briefcase: Briefcase,
  trending: TrendingUp,
  users: Users,
  sprout: Sprout,
  sparkles: Sparkles,
};

const accentStyles: Record<Accent, { icon: string; glow: string }> = {
  blue: { icon: "text-accent-blue", glow: "blue" },
  purple: { icon: "text-primary", glow: "purple" },
  green: { icon: "text-accent-green", glow: "green" },
  pink: { icon: "text-accent-pink", glow: "pink" },
  yellow: { icon: "text-accent-yellow", glow: "yellow" },
};

export default function QuestionCard({
  title,
  description,
  icon,
  accent,
  index = 0,
}: QuestionCardProps) {
  const Icon = iconMap[icon];
  const styles = accentStyles[accent];

  return (
    <motion.div
      initial={{ opacity: 0, y: 30 }}
      whileInView={{ opacity: 1, y: 0 }}
      viewport={{ once: true }}
      transition={{ duration: 0.5, delay: index * 0.1 }}
    >
      <GlassCard
        glow={styles.glow as "blue" | "purple" | "green" | "pink" | "yellow"}
        className="group cursor-pointer"
      >
        <div className="flex items-center justify-between gap-3">
          <div className="flex min-w-0 flex-1 items-center gap-3 sm:gap-4">
            <div
              className={cn(
                "flex h-11 w-11 shrink-0 items-center justify-center rounded-xl sm:h-12 sm:w-12",
                "border border-border bg-background/50 transition-all duration-300",
                "group-hover:shadow-glow group-hover:border-primary/40"
              )}
            >
              <Icon
                className={cn("h-5 w-5 sm:h-6 sm:w-6", styles.icon)}
                aria-hidden="true"
              />
            </div>
            <div className="min-w-0">
              <h3 className="mb-0.5 text-base font-bold text-white sm:mb-1 sm:text-lg">
                {title}
              </h3>
              <p className="text-sm leading-snug text-text-secondary">
                {description}
              </p>
            </div>
          </div>
          <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-full border border-primary/20 bg-primary/5">
            <ArrowRight className="h-5 w-5 text-primary" aria-hidden="true" />
          </div>
        </div>
      </GlassCard>
    </motion.div>
  );
}
