import type { Metadata } from "next";
import HowItWorksPage from "./HowItWorksPage";

export const metadata: Metadata = {
  title: "How It Works",
  description:
    "Learn how LifeReaderGPT analyzes your face, handwriting, or palm to deliver personalized AI-powered life insights.",
};

export default function Page() {
  return <HowItWorksPage />;
}
