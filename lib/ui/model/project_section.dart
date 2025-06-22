import 'package:portfolio/ui/model/home_section_ui.dart';

class ProjectSectionUi {
  ProjectSectionUi({
    required this.title,
    required this.projects,
  });

  final String title;
  final List<ProjectItemUi> projects;
}

class ProjectItemUi {
  ProjectItemUi({
    required this.title,
    required this.timeline,
    required this.logo,
    required this.image,
    required this.desc,
    required this.cta,
    required this.stacks,
  });

  final String title;
  final String timeline;
  final String logo;
  final String image;
  final String desc;
  final String cta;
  final List<TechStack> stacks;
}
