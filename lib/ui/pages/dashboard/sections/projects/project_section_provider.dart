import 'package:flutter/material.dart';
import 'package:portfolio/themes/resources/resource.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';
import 'package:portfolio/ui/model/project_section.dart';

class ProjectSectionProvider extends ChangeNotifier {
  final ProjectSectionUi section = ProjectSectionUi(
    title: 'PROJECTS',
    projects: [
      ProjectItemUi(
        title: 'MyTelkomsel',
        timeline: 'Jul 2023 — Present',
        logo: Assets.icMytelkomsel,
        image: Assets.imgMytelkomselBg,
        cta:
            "https://play.google.com/store/apps/details?id=com.telkomsel.telkomselcm",
        stacks: [
          TechStack(name: "Android", iconPath: Assets.icAndroidLight),
          TechStack(name: "Kotlin", iconPath: Assets.icKotlinLight),
          TechStack(name: "Java", iconPath: Assets.icJavaLight),
        ],
      ),
      ProjectItemUi(
        title: 'Alkhairaat',
        timeline: 'March 2023 — Jun 2023',
        logo: Assets.icAlkhairaat,
        image: Assets.imgAlkhairaatBg,
        cta:
            "https://play.google.com/store/apps/details?id=com.alkhairaat.membership",
        stacks: [
          TechStack(name: "Android", iconPath: Assets.icAndroidLight),
          TechStack(name: "Flutter", iconPath: Assets.icFlutterLight),
        ],
      ),
      ProjectItemUi(
        title: 'HRESS CRM',
        timeline: 'Jan 2022 — Jun 2023',
        logo: Assets.icHressCrm,
        image: Assets.imgHressBg,
        cta:
            "https://play.google.com/store/apps/details?id=com.kalbe.crm.hress",
        stacks: [
          TechStack(name: "Android", iconPath: Assets.icAndroidLight),
          TechStack(name: "Kotlin", iconPath: Assets.icKotlinLight),
        ],
      ),
      ProjectItemUi(
        title: 'Akuisisi Loyalty',
        timeline: 'Jan 2022 — Jun 2023',
        logo: Assets.icAkuisisiLoyalty,
        image: Assets.imgAkuisisiLoyaltyBg,
        cta: "https://play.google.com/store/apps/details?id=com.kalbe.crm.dmqi",
        stacks: [
          TechStack(name: "Android", iconPath: Assets.icAndroidLight),
          TechStack(name: "Kotlin", iconPath: Assets.icKotlinLight),
        ],
      ),
      ProjectItemUi(
        title: 'Chakra App',
        timeline: 'Jan 2022 — Jun 2023',
        logo: Assets.icChakraLoyalty,
        image: Assets.imgChakraLoyaltyBg,
        cta:
            "https://play.google.com/store/apps/details?id=com.kalbe.cakraloyalty",
        stacks: [
          TechStack(name: "Android", iconPath: Assets.icAndroidLight),
          TechStack(name: "Kotlin", iconPath: Assets.icKotlinLight),
        ],
      ),
      ProjectItemUi(
        title: 'Lifelog',
        timeline: 'Okt 2022 — Sept 2022',
        logo: Assets.icLifelog,
        image: Assets.imgLifelogBg,
        cta: "https://play.google.com/store/apps/details?id=com.fakhry.lifelog",
        stacks: [
          TechStack(name: "Android", iconPath: Assets.icAndroidLight),
          TechStack(name: "Kotlin", iconPath: Assets.icKotlinLight),
        ],
      ),
    ],
  );
}
