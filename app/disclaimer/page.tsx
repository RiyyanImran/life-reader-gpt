import type { Metadata } from "next";
import DisclaimerPage from "./DisclaimerPage";

export const metadata: Metadata = {
  title: "Disclaimer",
  description:
    "LifeReaderGPT disclaimer — AI-generated insights for entertainment, self-reflection, and personal development only.",
};

export default function Page() {
  return <DisclaimerPage />;
}
