import 'package:flutter/material.dart';
import 'package:portfolio/ui/model/experience_section_ui.dart';
import 'package:portfolio/utils/constant.dart';

class ExperienceSectionWidget extends StatelessWidget {
  final ExperienceSectionUi section;
  final double height;
  final double paddingHorizontal;

  const ExperienceSectionWidget({
    required this.section,
    required this.height,
    required this.paddingHorizontal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: 16, horizontal: paddingHorizontal),
      constraints: BoxConstraints(minHeight: height, maxWidth: Const.maxWidthSection),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            section.title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: section.experiences
                .map((experience) => _ExperienceCardWidget(experience))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _ExperienceCardWidget extends StatelessWidget {
  final ExperienceItemUi experience;

  const _ExperienceCardWidget(this.experience);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(experience.logo),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  experience.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  experience.date,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 8),
                Text(
                  experience.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
