import type { Metadata, Viewport } from "next";
import { Inter } from "next/font/google";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
import ParticleBackground from "@/components/ParticleBackground";
import "./globals.css";

const inter = Inter({
  subsets: ["latin"],
  variable: "--font-inter",
  display: "swap",
});

export const viewport: Viewport = {
  width: "device-width",
  initialScale: 1,
  maximumScale: 5,
  themeColor: "#050816",
};

export const metadata: Metadata = {
  title: {
    default: "LifeReaderGPT — AI-Powered Life Readings",
    template: "%s | LifeReaderGPT",
  },
  description:
    "Discover hidden insights from your face, handwriting, and palm with AI-powered life readings. Get personality insights, relationship guidance, and career advice.",
  keywords: [
    "life reading",
    "face reading",
    "palm reading",
    "handwriting analysis",
    "AI insights",
    "personality",
  ],
  authors: [{ name: "LifeReaderGPT" }],
  openGraph: {
    title: "LifeReaderGPT — AI-Powered Life Readings",
    description:
      "Discover hidden insights from your face, handwriting, and palm with AI-powered life readings.",
    type: "website",
    locale: "en_US",
    siteName: "LifeReaderGPT",
  },
  robots: {
    index: true,
    follow: true,
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" className="dark overflow-x-hidden">
      <body
        className={`${inter.variable} min-h-screen overflow-x-hidden font-sans antialiased`}
      >
        <ParticleBackground />
        <Navbar />
        <main className="relative z-10 min-h-screen pt-[4.5rem] sm:pt-20 md:pt-28">
          {children}
        </main>
        <Footer />
      </body>
    </html>
  );
}
