"use client";

import { motion } from "framer-motion";
import Link from "next/link";
import { ReactNode } from "react";
import { useCanHover } from "@/hooks/useMediaQuery";
import { cn } from "@/lib/utils";

interface CTAButtonProps {
  children: ReactNode;
  href?: string;
  onClick?: () => void;
  variant?: "primary" | "secondary" | "outline";
  size?: "sm" | "md" | "lg";
  className?: string;
  type?: "button" | "submit";
  fullWidth?: boolean;
}

export default function CTAButton({
  children,
  href,
  onClick,
  variant = "primary",
  size = "md",
  className,
  type = "button",
  fullWidth = false,
}: CTAButtonProps) {
  const canHover = useCanHover();

  const sizeClasses = {
    sm: "px-4 py-2.5 text-sm min-h-[40px]",
    md: "px-6 py-3 text-base min-h-[44px]",
    lg: "px-8 py-3.5 text-base sm:text-lg min-h-[48px]",
  };

  const variantClasses = {
    primary: "gradient-btn text-white font-semibold rounded-xl",
    secondary:
      "bg-card border border-border text-white font-semibold rounded-xl hover:border-primary/50 hover:shadow-glow transition-all duration-300",
    outline:
      "border border-primary/50 text-primary font-semibold rounded-xl hover:bg-primary/10 transition-all duration-300",
  };

  const classes = cn(
    "inline-flex w-full items-center justify-center gap-2 sm:w-auto",
    sizeClasses[size],
    variantClasses[variant],
    fullWidth && "sm:w-full",
    className
  );

  const wrapperClass = cn(
    "block w-full sm:w-auto",
    fullWidth && "sm:w-full"
  );

  const motionProps = {
    whileHover: canHover ? { scale: 1.03 } : undefined,
    whileTap: { scale: 0.98 },
    transition: { type: "spring" as const, stiffness: 400, damping: 17 },
  };

  if (href) {
    return (
      <motion.div {...motionProps} className={wrapperClass}>
        <Link href={href} className={classes}>
          {children}
        </Link>
      </motion.div>
    );
  }

  return (
    <motion.button
      type={type}
      onClick={onClick}
      className={classes}
      {...motionProps}
    >
      {children}
    </motion.button>
  );
}
