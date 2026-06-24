import 'package:flutter/material.dart';
import '../../core/navigation.dart';
import '../../core/mobile_layout.dart';
import '../../l10n/app_strings.dart';
import '../../l10n/localized_content.dart';
import '../../widgets/cta_button.dart';
import '../../widgets/insight_list.dart';
import '../../widgets/section_header.dart';

class ReadingResultsScreen extends StatelessWidget {
  const ReadingResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;

    return SingleChildScrollView(
      padding: MobileLayout.scrollPadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionHeader(
            title: tr.personalInsights,
            centered: false,
            compact: false,
          ),
          SizedBox(height: MobileLayout.sectionGap(context)),
          InsightList(items: tr.readingSections),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CtaButton(
                  label: tr.savePdf,
                  secondary: true,
                  icon: Icons.download_outlined,
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CtaButton(
                  label: tr.screenshot,
                  secondary: true,
                  icon: Icons.camera_alt_outlined,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          CtaButton(
            label: tr.askMoreQuestions,
            expanded: true,
            icon: Icons.chat_bubble_outline,
            onPressed: () => context.openPage('/questions-answers'),
          ),
        ],
      ),
    );
  }
}
