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
  final String image;

  ProjectItem({
    required this.title,
    required this.image,
  });
}
