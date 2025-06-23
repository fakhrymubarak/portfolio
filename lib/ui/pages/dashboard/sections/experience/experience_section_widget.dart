import 'package:flutter/material.dart';
import 'package:showcase/core/ui/text/gradient_text_widget.dart';
import 'package:showcase/themes/styles/app_themes.dart';
import 'package:showcase/themes/values/app_size.dart';
import 'package:showcase/ui/model/experience_section_ui.dart';
import 'package:showcase/ui/pages/dashboard/components/custom_background_section_widget.dart';
import 'package:showcase/ui/pages/dashboard/sections/experience/experience_section_provider.dart';
import 'package:provider/provider.dart';

class ExperienceSectionWidget extends StatelessWidget {
  const ExperienceSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final section = context.watch<ExperienceSectionProvider>().section;
    final screenHeight = MediaQuery.of(context).size.height;

    return CustomBackgroundSectionWidget(
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 64),
          constraints: BoxConstraints(
            maxWidth: AppSize.maxWidthHome,
            minHeight: screenHeight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradientText(
                text: section.title,
                style: Theme.of(context).textTheme.headlineMedium,
                colors: AppColors.flutterGradient,
              ),
              const SizedBox(height: 24),
              ...section.experiences
                  .map((experience) => _ExperienceCardWidget(experience)),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExperienceCardWidget extends StatelessWidget {
  const _ExperienceCardWidget(this.experience);

  final ExperienceItemUi experience;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(experience.logoPath, height: 54, width: 54),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experience.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 4),
                Text(experience.companyAndStatus,
                    style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(height: 4),
                Text(
                  experience.date,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 8),
                Text(experience.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
