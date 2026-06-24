import type { Metadata } from "next";
import QuestionsPage from "./QuestionsPage";

export const metadata: Metadata = {
  title: "Ask Questions",
  description:
    "Ask anything about your life — relationships, career, success, family, personal growth, and future opportunities.",
};

export default function Page() {
  return <QuestionsPage />;
}
