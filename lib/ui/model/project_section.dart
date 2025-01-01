import 'package:portfolio/ui/model/home_section.dart';

class ProjectSection {
  final String title;
  final List<ProjectItem> projects;

  ProjectSection({
    required this.title,
    required this.projects,
  });
}

class ProjectItem {
  final String title;
  final String timeline;
  final String logo;
  final String image;
  final String cta;
  final List<TechStack> stacks;

  ProjectItem({
    required this.title,
    required this.timeline,
    required this.logo,
    required this.image,
    required this.cta,
    required this.stacks,
  });
}
