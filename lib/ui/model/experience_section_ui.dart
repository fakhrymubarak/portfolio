class ExperienceSectionUi {
  ExperienceSectionUi({
    required this.title,
    required this.experiences,
  });

  final String title;
  final List<ExperienceItemUi> experiences;
}

class ExperienceItemUi {
  ExperienceItemUi({
    required this.title,
    required this.companyAndStatus,
    required this.logoPath,
    required this.date,
    required this.description,
  });

  final String title;
  final String companyAndStatus;
  final String logoPath;
  final String date;
  final String description;
}
