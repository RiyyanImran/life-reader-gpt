import type { Metadata } from "next";
import QuestionsAnswersPage from "./QuestionsAnswersPage";

export const metadata: Metadata = {
  title: "Questions & Answers",
  description: "Ask LifeReaderGPT questions about your career, relationships, and life path.",
};

export default function Page() {
  return <QuestionsAnswersPage />;
}
