class ExperienceSectionUi {
  final String title;
  final List<ExperienceItemUi> experiences;

  ExperienceSectionUi({
    required this.title,
    required this.experiences,
  });
}

class ExperienceItemUi {
  final String title;
  final String companyAndStatus;
  final String logoPath;
  final String date;
  final String description;

  ExperienceItemUi({
    required this.title,
    required this.companyAndStatus,
    required this.logoPath,
    required this.date,
    required this.description,
  });
}
