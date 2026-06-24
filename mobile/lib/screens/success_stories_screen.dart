import 'package:flutter/material.dart';
import '../../core/mobile_layout.dart';
import '../../core/responsive.dart';
import '../../l10n/app_strings.dart';
import '../../l10n/localized_content.dart';
import '../../widgets/section_header.dart';
import '../../widgets/testimonial_card.dart';

class SuccessStoriesScreen extends StatelessWidget {
  const SuccessStoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    final isWide = AppBreakpoints.isTablet(context);
    final crossAxisCount = AppBreakpoints.isDesktop(context) ? 3 : 2;

    return SingleChildScrollView(
      padding: MobileLayout.scrollPadding(context),
      child: Column(
        children: [
          SectionHeader(
            title: tr.whatPeopleSaying,
            compact: false,
          ),
          SizedBox(height: MobileLayout.sectionGap(context)),
          if (isWide)
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                mainAxisExtent: 200,
              ),
              itemCount: tr.successStories.length,
              itemBuilder: (context, index) => TestimonialCardWidget(
                item: tr.successStories[index],
              ),
            )
          else
            ...tr.successStories.map(
              (story) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: TestimonialCardWidget(item: story),
              ),
            ),
        ],
      ),
    );
  }
}
