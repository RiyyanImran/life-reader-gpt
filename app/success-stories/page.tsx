import type { Metadata } from "next";
import SuccessStoriesPage from "./SuccessStoriesPage";

export const metadata: Metadata = {
  title: "Success Stories",
  description:
    "Read real success stories from LifeReaderGPT users who discovered career growth, relationship insights, and hidden potential.",
};

export default function Page() {
  return <SuccessStoriesPage />;
}
