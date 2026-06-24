import type { Metadata } from "next";
import HomePage from "./HomePage";

export const metadata: Metadata = {
  title: "Try Your Free Life Reader Sample",
  description:
    "Discover hidden insights from your face, handwriting, and palm. Get free personality insights, relationship guidance, and career advice.",
};

export default function Page() {
  return <HomePage />;
}
