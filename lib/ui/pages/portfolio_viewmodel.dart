import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:portfolio/themes/resources/resource.dart';
import 'package:portfolio/ui/model/contact_section_ui.dart';
import 'package:portfolio/ui/model/experience_section_ui.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';
import 'package:portfolio/ui/model/navigation_bar_section_ui.dart';
import 'package:portfolio/ui/model/project_section.dart';
import 'package:portfolio/utils/constant.dart';

class PortfolioViewModel extends ChangeNotifier {
  int selectedNavBarId = 0;
  Timer? _debounceTimer;
  Offset _homeNavOffset = Offset(0, 0);
  Offset selectedNavOffset = Offset(0, 0);

  late List<NavigationBarSectionUi> navBarSections;

  late final HomeSectionUi homeSection;
  late final ProjectSectionUi projectSection;
  late final ExperienceSectionUi experienceSection;
  late final ContactSectionUi contactSection;

  PortfolioViewModel() {
    _initData();
  }

  void _initData() {
    navBarSections = [
      NavigationBarSectionUi(id: Const.homeId, title: "Home", isSelected: true),
      NavigationBarSectionUi(
          id: Const.projectId, title: "Projects", isSelected: false),
      NavigationBarSectionUi(
          id: Const.experienceId, title: "Experience", isSelected: false),
      NavigationBarSectionUi(
          id: Const.contactId, title: "Contact", isSelected: false),
    ];
    homeSection = HomeSectionUi(
      title: ['Hi, I am ', 'Fakhry ', 'Mubarak '],
      subtitle: 'Android Developer',
      description:
          'Software engineer with 3 years of experience in mobile app development, including several published Android apps on the Play Store. Actively expanding my expertise in software engineering and driven by a passion for learning and problem-solving.',
      imagePath: Assets.imgAvatar,
      btnInteraction1: 'Interact with Me!',
      btnInteraction2: 'Download My CV',
      techStackSection: TechStackSectionUi(
        title: "EXPERIENCE WITH",
        highlightStacks: [
          TechStack(name: "Android", iconPath: Assets.icAndroidDark),
          TechStack(name: "Kotlin", iconPath: Assets.icKotlinDark),
          TechStack(name: "Java", iconPath: Assets.icJavaDark),
          TechStack(name: "Flutter", iconPath: Assets.icFlutterDark),
        ],
        stacks: [
          TechStack(name: "Attlasian", iconPath: Assets.icAttlasianDark),
          TechStack(name: "Firebase", iconPath: Assets.icFirebaseDark),
          TechStack(name: "Git", iconPath: Assets.icGitDark),
          TechStack(name: "Github", iconPath: Assets.icGithubDark),
          TechStack(name: "Gitlab", iconPath: Assets.icGitlabDark),
          TechStack(name: "Jira", iconPath: Assets.icJiraDark),
          TechStack(name: "Postman", iconPath: Assets.icPostmanDark),
        ],
      ),
    );

    projectSection = ProjectSectionUi(
      title: 'Projects',
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
          cta:
              "https://play.google.com/store/apps/details?id=com.kalbe.crm.dmqi",
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
          cta:
              "https://play.google.com/store/apps/details?id=com.fakhry.lifelog",
          stacks: [
            TechStack(name: "Android", iconPath: Assets.icAndroidLight),
            TechStack(name: "Kotlin", iconPath: Assets.icKotlinLight),
          ],
        ),
      ],
    );

    experienceSection = ExperienceSectionUi(
      title: 'Experience',
      experiences: [
        ExperienceItemUi(
          title: 'Android Developer for MyTelkomsel',
          logo:
              'https://media.licdn.com/dms/image/v2/C560BAQGlo4pZo6rcaQ/company-logo_100_100/company-logo_100_100/0/1631379820861?e=1743638400&v=beta&t=O17Ni3hryshz-PYyddPibHQwMp56cSmiwEUMGmRul1c',
          date: 'Jul 2023 — Present · 1 yr 7 mos',
          description: """
Milestones : 
- In the first 3 months, I have been working in the SuperApp Squad. We plan and execute some concepts to integrate other apps with MyTelkomsel.
- Moved to Customer Interaction Squad and developed Help Center, Veronika Chat, and InApp Chat features.
- Assigned to assist Engagement Squad in developing Commerce features.
Plan, develop, and build features with SOLID principles and clean architecture.
""",
        ),
        ExperienceItemUi(
          title: 'Mobile Development Instructor',
          logo:
              'https://media.licdn.com/dms/image/v2/C560BAQEVREspL4ipDQ/company-logo_100_100/company-logo_100_100/0/1630661916225/bangkit_academy_logo?e=1743638400&v=beta&t=amVqzi2oAgYEnCSmARtu4qnPMP3Mn7qK4IlYqSpPw7I',
          date: 'Feb 2024 — Dec 2024 · 11 mos',
          description:
              'Help the Bangkit cohort to understand the Android Development course material through ILT sessions..',
        ),
        ExperienceItemUi(
          title: 'Software Engineer (Mobile | Kotlin & Flutter)',
          logo:
              'https://media.licdn.com/dms/image/v2/C560BAQEr14Jn030ACQ/company-logo_100_100/company-logo_100_100/0/1630572054737/pt_cakra_radha_mustika_kalbe_group_logo?e=1743638400&v=beta&t=4RuSRbQWtDxYaoWx_aEKhXn5f7yP2JjBfkyqDz_cNKk',
          date: 'Jan 2022 — Jun 2023 · 1 yr 6 mos',
          description: """
- Migrating Chakra android app data source from vendor server to CRM server (~80 API endpoint)
- Migrating app architecture pattern from MVP to MVVM
- Migrating source code language from 100% Java to 97% Kotlin
- Design and Implement repository pattern.
- Maintaining chakra rewards apps.
- Creating human resource employee self-service (HRESS) android apps for the HRGA department.
- Mentoring 2 interns to work on a HRESS android apps
- Creating White Label Loyalty Apps for Android and iOS platforms using Flutter.
""",
        ),
      ],
    );

    contactSection = ContactSectionUi(
      title: 'Contact',
      email: 'fakhrymubarak@gmail.com',
    );

    notifyListeners();
  }

  void selectSection(int selectedId, Offset? offset) {
    if (selectedNavBarId == selectedId || offset == null) return;
    if (_debounceTimer?.isActive == true) return;
    if (selectedId == 0) setHomeNavOffset(offset);

    navBarSections = navBarSections.map((navBar) {
      return navBar.copyWith(isSelected: navBar.id == selectedId);
    }).toList();

    selectedNavBarId = selectedId;
    selectedNavOffset =
        Offset(offset.dx - _homeNavOffset.dx, offset.dy - _homeNavOffset.dy);
    notifyListeners();

    _debounceTimer?.cancel();
    _debounceTimer = Timer(Const.scrollDurationInMillis, () {
      _debounceTimer = null;
    });
  }

  void setHomeNavOffset(Offset offset) {
    _homeNavOffset = offset;
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }
}
