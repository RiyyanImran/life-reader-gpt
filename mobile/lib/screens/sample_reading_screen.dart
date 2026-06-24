import 'package:flutter/material.dart';
import '../../core/navigation.dart';
import '../../core/mobile_layout.dart';
import '../../l10n/app_strings.dart';
import '../../l10n/localized_content.dart';
import '../../widgets/cta_button.dart';
import '../../widgets/reading_card.dart';

class SampleReadingScreen extends StatelessWidget {
  const SampleReadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;

    return ListView(
      padding: MobileLayout.scrollPadding(context),
      children: [
        ...tr.sampleReadings.map(
          (reading) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: ReadingCardWidget(
              item: reading,
              showArrow: true,
            ),
          ),
        ),
        const SizedBox(height: 8),
        CtaButton(
          label: tr.unlockFull,
          expanded: true,
          icon: Icons.lock_open_outlined,
          onPressed: () => context.openPage('/reading-results'),
        ),
      ],
    );
  }
}
