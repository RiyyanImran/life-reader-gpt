import type { Metadata } from "next";
import MyReadingsPage from "./MyReadingsPage";

export const metadata: Metadata = {
  title: "My Readings",
  description: "View your reading history — face, handwriting, palm, and relationship readings.",
};

export default function Page() {
  return <MyReadingsPage />;
}
