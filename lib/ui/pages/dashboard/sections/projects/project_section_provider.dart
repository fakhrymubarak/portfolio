import 'package:flutter/material.dart';
import 'package:portfolio/themes/resources/resource.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';
import 'package:portfolio/ui/model/project_section.dart';

class ProjectSectionProvider extends ChangeNotifier {
  static const int initialCount = 3;

  final ProjectSectionUi section = ProjectSectionUi(
    title: 'PROJECTS',
    projects: [
      ProjectItemUi(
        title: 'MyTelkomsel',
        timeline: 'Jul 2023 — Present',
        logo: Assets.icMytelkomsel,
        image: Assets.imgMytelkomselBg,
        desc:
            'MyTelkomsel is the official self-care mobile application from Telkomsel, Indonesia’s largest cellular provider, with over 100 million downloads and approximately 300,000 daily active users. '
            'In this project, I was responsible for planning, developing, and delivering multiple key features using Kotlin and Java within a clean architecture that adheres to SOLID principles. '
            'I also led and mentored junior developers, ensuring high code quality and team performance across various feature tracks.',
        // cta:
        //     'https://play.google.com/store/apps/details?id=com.telkomsel.telkomselcm',
        cta: 'https://apkpure.com/alkhairaat-app/com.alkhairaat.membership',
        stacks: [
          TechStack(name: 'Android', iconPath: Assets.icAndroidLight),
          TechStack(name: 'Kotlin', iconPath: Assets.icKotlinLight),
          TechStack(name: 'Java', iconPath: Assets.icJavaLight),
        ],
      ),
      ProjectItemUi(
        title: 'Alkhairaat',
        timeline: 'March 2023 — Jun 2023',
        logo: Assets.icAlkhairaat,
        image: Assets.imgAlkhairaatBg,
        desc:
            'Alkhairaat is a membership application designed for the Alkhairaat Islamic organization in Indonesia. It facilitates registration, member management, and organizational engagement. '
            'I developed the mobile app using Flutter with Bloc state management, focusing on clean, scalable, and robust architecture for both Android and iOS platforms. '
            'My responsibilities included implementing core features, maintaining performance consistency, and delivering a user-friendly interface tailored to the organization’s needs.',
        cta:
            'https://play.google.com/store/apps/details?id=com.alkhairaat.membership',
        stacks: [
          TechStack(name: 'Android', iconPath: Assets.icAndroidLight),
          TechStack(name: 'Flutter', iconPath: Assets.icFlutterLight),
        ],
      ),
      ProjectItemUi(
        title: 'Chakra App',
        timeline: 'Jan 2022 — Jun 2023',
        logo: Assets.icChakraLoyalty,
        image: Assets.imgChakraLoyaltyBg,
        desc:
            'Chakra App is a loyalty membership application developed for Kalbe Nutritionals users. '
            'My primary responsibility included migrating the entire codebase from Java to Kotlin (up to 97%) and refactoring the architecture from MVP to MVVM. '
            'In addition, I worked on a white-label variant of the app using Flutter, expanding its usability across multiple brand implementations and streamlining future development processes.',
        // cta:
        //     'https://play.google.com/store/apps/details?id=com.kalbe.cakraloyalty',
        cta: 'https://apkpure.com/chakra-rewards/com.kalbe.cakraloyalty',
        // alternative CTA.
        stacks: [
          TechStack(name: 'Android', iconPath: Assets.icAndroidLight),
          TechStack(name: 'Kotlin', iconPath: Assets.icKotlinLight),
        ],
      ),
      ProjectItemUi(
        title: 'Akuisisi Loyalty',
        timeline: 'Jan 2022 — Jun 2023',
        logo: Assets.icAkuisisiLoyalty,
        image: Assets.imgAkuisisiLoyaltyBg,
        desc:
            'Akuisisi Loyalty is an Android application developed by PT Cakra Radha Mustika to support sales team operations in acquiring and tracking loyalty members. '
            'Built using Kotlin, I focused on implementing the feature set required for progress tracking, reporting, and member engagement. '
            'I also ensured smooth UX flows, robust network operations, and an architecture that could scale with the organization’s future loyalty programs.',
        cta: 'https://play.google.com/store/apps/details?id=com.kalbe.crm.dmqi',
        stacks: [
          TechStack(name: 'Android', iconPath: Assets.icAndroidLight),
          TechStack(name: 'Kotlin', iconPath: Assets.icKotlinLight),
        ],
      ),
      ProjectItemUi(
        title: 'HRESS CRM',
        timeline: 'Jan 2022 — Jun 2023',
        logo: Assets.icHressCrm,
        image: Assets.imgHressBg,
        desc:
            'HRESS CRM is a digital solution owned by PT Cakra Radha Mustika, aimed at supporting the daily operations of Field Officers through an Android-based mobile application. '
            'I contributed to building this solution using Kotlin, ensuring the app remained efficient and aligned with the operational workflow of the field teams. '
            'My role also included integrating offline capabilities, syncing with backend systems, and maintaining a clean user experience in varying field conditions.',
        cta:
            'https://play.google.com/store/apps/details?id=com.kalbe.crm.hress',
        stacks: [
          TechStack(name: 'Android', iconPath: Assets.icAndroidLight),
          TechStack(name: 'Kotlin', iconPath: Assets.icKotlinLight),
        ],
      ),
      ProjectItemUi(
        title: 'Lifelog',
        timeline: 'Okt 2022 — Sept 2022',
        logo: Assets.icLifelog,
        image: Assets.imgLifelogBg,
        desc:
            'Lifelog is a personal journaling and mood tracking Android application, created as my first published app on the Google Play Store. '
            'I built the entire app from scratch using Java and Kotlin, applying what I learned as a self-taught developer during my early Android journey. '
            'The app allows users to log their daily thoughts, emotions, and mental well-being—helping them reflect and grow over time.',
        cta: 'https://play.google.com/store/apps/details?id=com.fakhry.lifelog',
        stacks: [
          TechStack(name: 'Android', iconPath: Assets.icAndroidLight),
          TechStack(name: 'Kotlin', iconPath: Assets.icKotlinLight),
        ],
      ),
    ],
  );

  int _visibleCount = initialCount;

  List<ProjectItemUi> get visibleProjects =>
      section.projects.take(_visibleCount).toList();

  bool get hasMore => _visibleCount < section.projects.length;

  void loadMore() {
    _visibleCount = section.projects.length;
    notifyListeners();
  }
}
