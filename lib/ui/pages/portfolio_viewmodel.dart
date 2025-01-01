import 'package:flutter/foundation.dart';
import 'package:portfolio/ui/model/home_section.dart';
import 'package:portfolio/ui/model/project_section.dart';
import 'package:portfolio/ui/model/experience_section.dart';
import 'package:portfolio/ui/model/contact_section.dart';

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
      title: 'I do code and make content about it!',
      description:
          'I am a seasoned full-stack software engineer with over 8 years of experience, specializing in backend development.',
      image: 'https://media.licdn.com/dms/image/v2/D5603AQEqi71RoOGCtg/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1714805818487?e=1741219200&v=beta&t=pc9LoEvoAQfJj9XRK2weK7FENNlVBAmp4rbMxRVP-Cc',
    );

    projectSection = ProjectSection(
      title: 'Projects',
      projects: [
        ProjectItem(title: 'HTML Tutorial', image: 'assets/icons/ic_kotlin.svg'),
        ProjectItem(title: 'CSS Tutorial', image: 'assets/icons/ic_kotlin.svg'),
      ],
    );

    experienceSection = ExperienceSection(
      title: 'Experience',
      experiences: [
        ExperienceItem(
          title: 'Lead Software Engineer at Google',
          date: 'Nov 2019 - Present',
          description:
              'Contributed to core search algorithms and scalable SaaS architectures.',
        ),
        ExperienceItem(
          title: 'Junior Software Engineer at Apple',
          date: 'Jan 2016 - Dec 2017',
          description: 'Shaped the architecture of mission-critical projects.',
        ),
        ExperienceItem(
          title: 'Software Engineer at Meta',
          date: 'Jan 2017 - Oct 2019',
          description: 'Designed backend systems for large-scale platforms.',
        ),
      ],
    );

    contactSection = ContactSection(
      title: 'Contact',
      email: 'abmcodehub@gmail.com',
    );

    notifyListeners();
  }
}
