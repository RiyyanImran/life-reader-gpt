"use client";

import { motion } from "framer-motion";
import { ScanFace, PenLine, Hand, LucideIcon } from "lucide-react";
import GlassCard from "./GlassCard";
import { cn } from "@/lib/utils";

type Accent = "blue" | "purple" | "green";
type IconType = "face" | "handwriting" | "palm";

interface HeroCardProps {
  title: string;
  description: string;
  icon: IconType;
  accent: Accent;
  index?: number;
}

const iconMap: Record<IconType, LucideIcon> = {
  face: ScanFace,
  handwriting: PenLine,
  palm: Hand,
};

const accentStyles: Record<
  Accent,
  { icon: string; iconBorder: string; iconBg: string }
> = {
  blue: {
    icon: "text-accent-blue",
    iconBorder: "border-accent-blue/40",
    iconBg: "bg-accent-blue/10",
  },
  purple: {
    icon: "text-primary",
    iconBorder: "border-primary/40",
    iconBg: "bg-primary/10",
  },
  green: {
    icon: "text-accent-green",
    iconBorder: "border-accent-green/40",
    iconBg: "bg-accent-green/10",
  },
};

export default function HeroCard({
  title,
  description,
  icon,
  accent,
  index = 0,
}: HeroCardProps) {
  const Icon = iconMap[icon];
  const styles = accentStyles[accent];

  return (
    <motion.div
      className="h-full"
      initial={{ opacity: 0, y: 40 }}
      whileInView={{ opacity: 1, y: 0 }}
      viewport={{ once: true }}
      transition={{ duration: 0.5, delay: index * 0.15 }}
    >
      <GlassCard
        className="flex h-full flex-col items-center text-center"
        glow="purple"
      >
        <div
          className={cn(
            "mb-4 flex h-16 w-16 shrink-0 items-center justify-center rounded-2xl",
            "border shadow-glow",
            styles.iconBorder,
            styles.iconBg
          )}
        >
          <Icon className={cn("h-8 w-8", styles.icon)} aria-hidden="true" />
        </div>
        <h3 className="mb-3 text-xl font-bold text-white">{title}</h3>
        <p className="min-h-[4.5rem] flex-1 text-sm leading-relaxed text-text-secondary sm:min-h-[3.5rem]">
          {description}
        </p>
      </GlassCard>
    </motion.div>
  );
}
