import 'package:flutter/material.dart';
import '../../core/mobile_layout.dart';
import '../../l10n/app_strings.dart';
import '../../l10n/localized_content.dart';
import '../../widgets/privacy_banner.dart';
import '../../widgets/timeline_widget.dart';

class HowItWorksScreen extends StatelessWidget {
  const HowItWorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;

    return SingleChildScrollView(
      padding: MobileLayout.scrollPadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TimelineWidget(steps: tr.timelineSteps),
          const SizedBox(height: 16),
          PrivacyBanner(
            title: tr.privacyPriority,
            description: tr.privacyDesc,
          ),
        ],
      ),
    );
  }
}
