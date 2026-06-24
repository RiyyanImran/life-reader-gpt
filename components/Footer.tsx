import Link from "next/link";
import { navLinks } from "@/lib/mock-data";

export default function Footer() {
  return (
    <footer className="relative z-10 border-t border-border bg-card/50 backdrop-blur-xl">
      <div className="mx-auto max-w-7xl px-4 py-10 sm:px-6 sm:py-12 lg:px-8">
        <div className="grid gap-8 text-center sm:grid-cols-2 sm:text-left md:grid-cols-3">
          <div className="sm:col-span-2 md:col-span-1">
            <Link
              href="/"
              className="mb-4 inline-flex items-center justify-center gap-2 sm:justify-start"
            >
              <span className="text-2xl" aria-hidden="true">
                🌙
              </span>
              <span className="text-lg font-bold text-white">
                LifeReader<span className="text-primary">GPT</span>
              </span>
            </Link>
            <p className="text-sm leading-relaxed text-text-secondary">
              Discover hidden insights about your personality, relationships,
              and life path through AI-powered readings.
            </p>
          </div>

          <div>
            <h3 className="mb-4 text-sm font-semibold uppercase tracking-wider text-white">
              Quick Links
            </h3>
            <ul className="space-y-2">
              {navLinks.slice(0, 5).map((link) => (
                <li key={link.href}>
                  <Link
                    href={link.href}
                    className="inline-block py-1 text-sm text-text-secondary transition-colors hover:text-primary"
                  >
                    {link.label}
                  </Link>
                </li>
              ))}
            </ul>
          </div>

          <div>
            <h3 className="mb-4 text-sm font-semibold uppercase tracking-wider text-white">
              Legal
            </h3>
            <ul className="space-y-2">
              <li>
                <Link
                  href="/disclaimer"
                  className="inline-block py-1 text-sm text-text-secondary transition-colors hover:text-primary"
                >
                  Disclaimer
                </Link>
              </li>
              <li>
                <Link
                  href="/privacy"
                  className="inline-block py-1 text-sm text-text-secondary transition-colors hover:text-primary"
                >
                  Privacy Policy
                </Link>
              </li>
              <li>
                <Link
                  href="/terms"
                  className="inline-block py-1 text-sm text-text-secondary transition-colors hover:text-primary"
                >
                  Terms of Service
                </Link>
              </li>
            </ul>
          </div>
        </div>

        <div className="mt-8 border-t border-border pt-6 text-center sm:pt-8">
          <p className="text-xs text-text-secondary sm:text-sm">
            © {new Date().getFullYear()} LifeReaderGPT. All rights reserved.
            AI-generated insights for entertainment purposes only.
          </p>
        </div>
      </div>
    </footer>
  );
}
