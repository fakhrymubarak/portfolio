import 'package:flutter/material.dart';
import 'package:portfolio/themes/resources/resource.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';

class IntroSectionProvider extends ChangeNotifier {
  final HomeSectionUi section = HomeSectionUi(
    title: ['Hi, I am ', 'Fakhry ', 'Mubarak'],
    subtitle: 'Android Developer',
    description:
        'Software engineer with 3 years of experience in mobile app development, including several published Android apps on the Play Store. Actively expanding my expertise in software engineering and driven by a passion for learning and problem-solving.',
    imagePath: Assets.imgAvatar,
    btnInteraction1: 'Interact with Me!',
    btnInteraction2: 'Download My CV',
    techStackSection: TechStackSectionUi(
      title: 'EXPERIENCE WITH',
      highlightStacks: [
        TechStack(name: 'Android', iconPath: Assets.icAndroidDark),
        TechStack(name: 'Kotlin', iconPath: Assets.icKotlinDark),
        TechStack(name: 'Java', iconPath: Assets.icJavaDark),
        TechStack(name: 'Flutter', iconPath: Assets.icFlutterDark),
      ],
      stacks: [
        TechStack(name: 'Attlasian', iconPath: Assets.icAttlasianDark),
        TechStack(name: 'Firebase', iconPath: Assets.icFirebaseDark),
        TechStack(name: 'Git', iconPath: Assets.icGitDark),
        TechStack(name: 'Github', iconPath: Assets.icGithubDark),
        TechStack(name: 'Gitlab', iconPath: Assets.icGitlabDark),
        TechStack(name: 'Jira', iconPath: Assets.icJiraDark),
        TechStack(name: 'Postman', iconPath: Assets.icPostmanDark),
      ],
    ),
  );
}
