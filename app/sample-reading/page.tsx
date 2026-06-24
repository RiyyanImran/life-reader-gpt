import type { Metadata } from "next";
import SampleReadingPage from "./SampleReadingPage";

export const metadata: Metadata = {
  title: "Sample Reading",
  description:
    "Preview sample AI-powered face, handwriting, and palm readings. Unlock your full personalized reading for just $5.",
};

export default function Page() {
  return <SampleReadingPage />;
}
