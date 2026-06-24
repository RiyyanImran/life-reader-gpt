"use client";

import { motion } from "framer-motion";
import {
  Download,
  Camera,
  MessageCircle,
} from "lucide-react";
import Accordion from "@/components/Accordion";
import CTAButton from "@/components/CTAButton";
import SectionHeader from "@/components/SectionHeader";
import PageTransition from "@/components/PageTransition";
import { readingSections } from "@/lib/mock-data";

export default function ReadingResultsPage() {
  return (
    <PageTransition>
      <section className="page-section">
        <div className="mx-auto max-w-3xl">
          <div className="mb-12">
            <SectionHeader title="YOUR PERSONAL INSIGHTS" />
          </div>

          <Accordion items={readingSections} />

          <motion.div
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            className="mt-10 flex flex-col gap-3 sm:flex-row sm:flex-wrap sm:justify-center"
          >
            <CTAButton variant="secondary" className="gap-2" fullWidth>
              <Download className="h-4 w-4" aria-hidden="true" />
              Save PDF
            </CTAButton>
            <CTAButton variant="secondary" className="gap-2" fullWidth>
              <Camera className="h-4 w-4" aria-hidden="true" />
              Take Screenshot
            </CTAButton>
            <CTAButton href="/questions-answers" className="gap-2" fullWidth>
              <MessageCircle className="h-4 w-4" aria-hidden="true" />
              Ask More Questions
            </CTAButton>
          </motion.div>
        </div>
      </section>
    </PageTransition>
  );
}
