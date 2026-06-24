"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { motion, AnimatePresence } from "framer-motion";
import { Menu, X, ChevronDown, Globe } from "lucide-react";
import { navLinks, languages } from "@/lib/mock-data";
import CTAButton from "./CTAButton";
import { cn } from "@/lib/utils";

function NavLink({
  href,
  label,
  active,
}: {
  href: string;
  label: string;
  active: boolean;
}) {
  return (
    <Link
      href={href}
      className={cn(
        "touch-target inline-flex items-center whitespace-nowrap rounded-lg px-2 py-2 text-xs font-medium transition-colors sm:px-2.5 lg:px-3 lg:text-sm",
        active
          ? "bg-primary/10 text-primary"
          : "text-text-secondary hover:bg-white/5 hover:text-white"
      )}
    >
      {label}
    </Link>
  );
}

export default function Navbar() {
  const [isOpen, setIsOpen] = useState(false);
  const [langOpen, setLangOpen] = useState(false);
  const [selectedLang, setSelectedLang] = useState("English");
  const [scrolled, setScrolled] = useState(false);
  const pathname = usePathname();

  useEffect(() => {
    const handleScroll = () => setScrolled(window.scrollY > 20);
    window.addEventListener("scroll", handleScroll);
    return () => window.removeEventListener("scroll", handleScroll);
  }, []);

  useEffect(() => {
    setIsOpen(false);
    setLangOpen(false);
  }, [pathname]);

  useEffect(() => {
    document.body.style.overflow = isOpen ? "hidden" : "";
    return () => {
      document.body.style.overflow = "";
    };
  }, [isOpen]);

  return (
    <header
      className={cn(
        "fixed top-0 left-0 right-0 z-50 transition-all duration-300",
        scrolled
          ? "bg-background/90 backdrop-blur-xl shadow-lg"
          : "bg-background/60 backdrop-blur-md"
      )}
      style={{
        paddingTop: "env(safe-area-inset-top)",
      }}
    >
      <div
        className="absolute bottom-0 left-0 right-0 h-px bg-gradient-to-r from-transparent via-primary/50 to-transparent"
        aria-hidden="true"
      />

      <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <nav
          className="flex items-center justify-between gap-3 py-2.5 sm:py-3"
          aria-label="Main navigation"
        >
          <Link href="/" className="flex min-w-0 shrink items-center gap-1.5 sm:gap-2">
            <span className="text-xl sm:text-2xl" aria-hidden="true">
              🌙
            </span>
            <span className="truncate text-base font-bold text-white sm:text-lg lg:text-xl">
              LifeReader<span className="text-primary">GPT</span>
            </span>
          </Link>

          <div className="hidden shrink-0 items-center gap-2 md:flex lg:gap-3">
            <div className="relative">
              <button
                type="button"
                onClick={() => setLangOpen(!langOpen)}
                className="touch-target flex items-center gap-1 rounded-lg border border-border px-2.5 py-2 text-xs text-text-secondary transition-colors hover:border-primary/40 hover:text-white lg:gap-1.5 lg:px-3 lg:text-sm"
                aria-expanded={langOpen}
                aria-haspopup="listbox"
              >
                <Globe className="h-3.5 w-3.5 lg:h-4 lg:w-4" aria-hidden="true" />
                <span className="hidden lg:inline">{selectedLang}</span>
                <span className="lg:hidden">EN</span>
                <ChevronDown className="h-3 w-3 lg:h-3.5 lg:w-3.5" aria-hidden="true" />
              </button>
              <AnimatePresence>
                {langOpen && (
                  <motion.ul
                    initial={{ opacity: 0, y: -8 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: -8 }}
                    className="absolute right-0 top-full z-50 mt-2 min-w-[140px] overflow-hidden rounded-xl border border-border bg-card py-1 shadow-glow"
                    role="listbox"
                  >
                    {languages.map((lang) => (
                      <li key={lang}>
                        <button
                          type="button"
                          role="option"
                          aria-selected={selectedLang === lang}
                          onClick={() => {
                            setSelectedLang(lang);
                            setLangOpen(false);
                          }}
                          className={cn(
                            "w-full px-4 py-2.5 text-left text-sm transition-colors hover:bg-primary/10",
                            selectedLang === lang
                              ? "text-primary"
                              : "text-text-secondary"
                          )}
                        >
                          {lang}
                        </button>
                      </li>
                    ))}
                  </motion.ul>
                )}
              </AnimatePresence>
            </div>

            <CTAButton href="/sample-reading" size="sm">
              Get Reading
            </CTAButton>
          </div>

          <button
            type="button"
            className="touch-target flex h-11 w-11 shrink-0 items-center justify-center rounded-lg border border-border text-white md:hidden"
            onClick={() => setIsOpen(!isOpen)}
            aria-expanded={isOpen}
            aria-label={isOpen ? "Close menu" : "Open menu"}
          >
            {isOpen ? (
              <X className="h-5 w-5" />
            ) : (
              <Menu className="h-5 w-5" />
            )}
          </button>
        </nav>

        <div
          className="hidden border-t border-border/40 pb-2 pt-1 md:block"
          role="navigation"
          aria-label="Page sections"
        >
          <div className="flex flex-wrap items-center justify-center gap-0.5 sm:gap-1">
            {navLinks.map((link) => (
              <NavLink
                key={link.href}
                href={link.href}
                label={link.label}
                active={pathname === link.href}
              />
            ))}
          </div>
        </div>
      </div>

      <AnimatePresence>
        {isOpen && (
          <motion.div
            initial={{ opacity: 0, height: 0 }}
            animate={{ opacity: 1, height: "auto" }}
            exit={{ opacity: 0, height: 0 }}
            className="max-h-[calc(100dvh-4rem)] overflow-y-auto border-t border-border bg-background/95 backdrop-blur-xl md:hidden"
          >
            <div className="space-y-1 px-4 py-4 pb-[max(1rem,env(safe-area-inset-bottom))]">
              {navLinks.map((link) => (
                <Link
                  key={link.href}
                  href={link.href}
                  className={cn(
                    "block rounded-lg px-4 py-3.5 text-base font-medium transition-colors",
                    pathname === link.href
                      ? "bg-primary/10 text-primary"
                      : "text-text-secondary active:bg-white/5"
                  )}
                >
                  {link.label}
                </Link>
              ))}

              <div className="border-t border-border pt-4">
                <p className="mb-3 px-4 text-xs font-medium uppercase tracking-wider text-text-secondary">
                  Language
                </p>
                <div className="flex flex-wrap gap-2 px-4">
                  {languages.map((lang) => (
                    <button
                      key={lang}
                      type="button"
                      onClick={() => setSelectedLang(lang)}
                      className={cn(
                        "min-h-[40px] rounded-lg border px-3 py-2 text-sm transition-colors",
                        selectedLang === lang
                          ? "border-primary bg-primary/10 text-primary"
                          : "border-border text-text-secondary"
                      )}
                    >
                      {lang}
                    </button>
                  ))}
                </div>
              </div>

              <div className="px-4 pt-4">
                <CTAButton href="/sample-reading" fullWidth>
                  Get Reading
                </CTAButton>
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </header>
  );
}
