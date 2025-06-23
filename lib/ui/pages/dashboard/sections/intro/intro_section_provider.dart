import 'package:flutter/material.dart';
import 'package:showcase/themes/resources/resource.dart';
import 'package:showcase/ui/model/home_section_ui.dart';

class IntroSectionProvider extends ChangeNotifier {
  final HomeSectionUi section = HomeSectionUi(
    title: ['Hi, I am ', 'Fakhry ', 'Mubarak'],
    subtitle: 'Android Developer',
    description:
        'Software engineer with 3 years of experience in mobile app development, including several published Android apps on the Play Store. Actively expanding my expertise in software engineering and driven by a passion for learning and problem-solving.',
    imagePath: Assets.imgAvatar,
    techStackSection: TechStackSectionUi(
      title: 'EXPERIENCE WITH',
      highlightStacks: [
        TechStack(name: 'Android', iconPath: Assets.icAndroidDark),
        TechStack(name: 'Kotlin', iconPath: Assets.icKotlinDark),
        TechStack(name: 'Java', iconPath: Assets.icJavaDark),
        TechStack(name: 'Flutter', iconPath: Assets.icFlutterDark),
      ],
    ),
  );
}
