"use client";

import { motion } from "framer-motion";
import { ReactNode } from "react";
import { useCanHover } from "@/hooks/useMediaQuery";
import { cn } from "@/lib/utils";

interface GlassCardProps {
  children: ReactNode;
  className?: string;
  hover?: boolean;
  glow?: "purple" | "blue" | "green" | "pink" | "yellow" | "none";
}

const glowStyles = {
  purple: "hover:shadow-glow hover:border-primary/50",
  blue: "hover:shadow-glow-blue hover:border-accent-blue/50",
  green: "hover:shadow-glow-green hover:border-accent-green/50",
  pink: "hover:border-accent-pink/50",
  yellow: "hover:border-accent-yellow/50",
  none: "",
};

export default function GlassCard({
  children,
  className,
  hover = true,
  glow = "purple",
}: GlassCardProps) {
  const canHover = useCanHover();

  return (
    <motion.div
      className={cn(
        "glass-card neon-border rounded-card p-4 sm:p-6",
        hover && canHover && "transition-all duration-300",
        hover && canHover && glowStyles[glow],
        className
      )}
      whileHover={
        hover && canHover ? { scale: 1.02, y: -4 } : undefined
      }
      whileTap={hover ? { scale: 0.99 } : undefined}
      transition={{ type: "spring", stiffness: 300, damping: 20 }}
    >
      {children}
    </motion.div>
  );
}
