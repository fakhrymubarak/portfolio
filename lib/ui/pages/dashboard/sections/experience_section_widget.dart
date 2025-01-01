

import 'package:flutter/material.dart';
import 'package:portfolio/ui/model/experience_section.dart';

class ExperienceSectionWidget extends StatelessWidget {
  final ExperienceSection section;

  const ExperienceSectionWidget(this.section, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ...section.experiences.map((experience) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      experience.title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      experience.date,
                      style: const TextStyle(
                          fontSize: 14, fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      experience.description,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}