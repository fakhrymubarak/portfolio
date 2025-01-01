import 'package:flutter/foundation.dart';
import 'package:portfolio/themes/resources/resource.dart';
import 'package:portfolio/ui/model/contact_section.dart';
import 'package:portfolio/ui/model/experience_section.dart';
import 'package:portfolio/ui/model/home_section.dart';
import 'package:portfolio/ui/model/project_section.dart';

class PortfolioViewModel extends ChangeNotifier {
  late final HomeSection homeSection;
  late final ProjectSection projectSection;
  late final ExperienceSection experienceSection;
  late final ContactSection contactSection;

  PortfolioViewModel() {
    _initData();
  }

  void _initData() {
    homeSection = HomeSection(
      title: 'A. Muh. Fakhry Mubarak',
      subtitle: 'Android Developer',
      description:
          'Currently working at PT Phincon as a consultant and developer for MyTelkomsel Android Application. Actively learning about Software Engineering with 3 years of professional experience. Has released several applications on the Google Play Store. Passionate about learning and challenging myself.',
      image:
          'https://media.licdn.com/dms/image/v2/D5603AQEqi71RoOGCtg/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1714805818487?e=1741219200&v=beta&t=pc9LoEvoAQfJj9XRK2weK7FENNlVBAmp4rbMxRVP-Cc',
      btnInteraction1: 'Interact with Me!',
      btnInteraction2: 'Download My CV',
      techStackSection: TechStackSection(
        title: "Experience With",
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

    projectSection = ProjectSection(
      title: 'Projects',
      projects: [
        ProjectItem(
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
        ProjectItem(
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
        ProjectItem(
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
        ProjectItem(
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
        ProjectItem(
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
        ProjectItem(
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

    experienceSection = ExperienceSection(
      title: 'Experience',
      experiences: [
        ExperienceItem(
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
        ExperienceItem(
          title: 'Mobile Development Instructor',
          logo:
              'https://media.licdn.com/dms/image/v2/C560BAQEVREspL4ipDQ/company-logo_100_100/company-logo_100_100/0/1630661916225/bangkit_academy_logo?e=1743638400&v=beta&t=amVqzi2oAgYEnCSmARtu4qnPMP3Mn7qK4IlYqSpPw7I',
          date: 'Feb 2024 — Dec 2024 · 11 mos',
          description:
              'Help the Bangkit cohort to understand the Android Development course material through ILT sessions..',
        ),
        ExperienceItem(
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

    contactSection = ContactSection(
      title: 'Contact',
      email: 'fakhrymubarak@gmail.com',
    );

    notifyListeners();
  }
}
