import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:portfolio/themes/resources/resource.dart';
import 'package:portfolio/ui/model/contact_section_ui.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';
import 'package:portfolio/ui/model/navigation_bar_section_ui.dart';
import 'package:portfolio/utils/constant.dart';

class PortfolioViewModel extends ChangeNotifier {
  int selectedNavBarId = 0;
  Timer? _debounceTimer;
  Offset _homeNavOffset = Offset(0, 0);
  Offset selectedNavOffset = Offset(0, 0);

  late List<NavigationBarSectionUi> navBarSections;

  late final HomeSectionUi homeSection;
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
