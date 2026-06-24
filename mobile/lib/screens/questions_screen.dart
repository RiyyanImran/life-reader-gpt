import 'package:flutter/material.dart';
import '../../core/mobile_layout.dart';
import '../../l10n/app_strings.dart';
import '../../l10n/localized_content.dart';
import '../../widgets/question_card.dart';
import '../../widgets/section_header.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;

    return SingleChildScrollView(
      padding: MobileLayout.scrollPadding(context),
      child: Column(
        children: [
          SectionHeader(
            title: tr.questionsTitle,
            subtitle: tr.questionsSubtitle,
            compact: false,
          ),
          SizedBox(height: MobileLayout.sectionGap(context)),
          ...tr.questionCategories.map(
            (category) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: QuestionCardWidget(item: category),
            ),
          ),
        ],
      ),
    );
  }
}
