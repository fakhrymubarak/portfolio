import 'package:flutter/material.dart';
import 'package:portfolio/themes/resources/resource.dart';
import 'package:portfolio/ui/model/experience_section_ui.dart';

class ExperienceSectionProvider extends ChangeNotifier {
  final ExperienceSectionUi section = ExperienceSectionUi(
    title: 'EXPERIENCES',
    experiences: [
      ExperienceItemUi(
        title: 'Android Developer for MyTelkomsel',
        companyAndStatus: 'PHINCON · Full-time',
        logoPath: Assets.icPhincon,
        date: 'Jul 2023 — Present · 2 yrs',
        description: '''
Milestones:
- Crafting Android Application with +100M downloads and ~6M daily active users.
- Moved to Customer Interaction Squad and developed Help Center, Veronika Chat, and InApp Chat features.
- Assigned to assist Engagement Squad in developing Commerce features.
Plan, develop, and build features with SOLID principles and clean architecture.
''',
      ),
      ExperienceItemUi(
        title: 'Mobile Development Instructor',
        companyAndStatus:
            'Bangkit Academy led by Google, Tokopedia, Gojek, & Traveloka · Part-time',
        logoPath: Assets.icBangkit,
        date: 'Feb 2024 — Dec 2024 · 11 mos',
        description:
            'Help the Bangkit cohort to understand the Android Development course material through ILT sessions.',
      ),
      ExperienceItemUi(
        title: 'Software Engineer (Mobile | Kotlin & Flutter)',
        companyAndStatus: 'PT. Cakra Radha Mustika (Kalbe Group) · Contract',
        logoPath: Assets.icCrm,
        date: 'Jan 2022 — Jun 2023 · 1 yr 6 mos',
        description: '''
- Migrating Chakra android app data source from vendor server to CRM server (~80 API endpoint)
- Migrating app architecture pattern from MVP to MVVM
- Migrating source code language from 100% Java to 97% Kotlin
- Design and Implement repository pattern.
- Maintaining chakra rewards apps.
- Creating human resource employee self-service (HRESS) android apps for the HRGA department.
- Mentoring 2 interns to work on a HRESS android apps
- Creating White Label Loyalty Apps for Android and iOS platforms using Flutter.
''',
      ),
    ],
  );
}
