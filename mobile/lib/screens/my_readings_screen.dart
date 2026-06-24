import 'package:flutter/material.dart';
import '../../core/mobile_layout.dart';
import '../../l10n/app_strings.dart';
import '../../l10n/localized_content.dart';
import '../../widgets/saved_reading_card.dart';
import '../../widgets/section_header.dart';

class MyReadingsScreen extends StatelessWidget {
  const MyReadingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;

    return SingleChildScrollView(
      padding: MobileLayout.scrollPadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionHeader(
            title: tr.savedReadings,
            centered: false,
            compact: false,
          ),
          SizedBox(height: MobileLayout.sectionGap(context)),
          ...tr.myReadings.map(
            (reading) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SavedReadingCard(item: reading),
            ),
          ),
        ],
      ),
    );
  }
}
