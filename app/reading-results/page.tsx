import type { Metadata } from "next";
import ReadingResultsPage from "./ReadingResultsPage";

export const metadata: Metadata = {
  title: "Your Personal Insights",
  description:
    "View your complete AI-powered life reading with personality insights, career guidance, relationships, and more.",
};

export default function Page() {
  return <ReadingResultsPage />;
}
