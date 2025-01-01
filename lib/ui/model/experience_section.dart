class ExperienceSection {
  final String title;
  final List<ExperienceItem> experiences;

  ExperienceSection({
    required this.title,
    required this.experiences,
  });
}

class ExperienceItem {
  final String title;
  final String date;
  final String description;

  ExperienceItem({
    required this.title,
    required this.date,
    required this.description,
  });
}
